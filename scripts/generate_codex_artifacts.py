#!/usr/bin/env python3
"""Generate Codex plugin metadata from the existing Claude plugin layout."""

from __future__ import annotations

import json
import re
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
REPO_URL = "https://github.com/phuryn/pm-skills"

PLUGIN_UI = {
    "pm-product-discovery": {"display_name": "Product Discovery", "brand_color": "#2563EB"},
    "pm-product-strategy": {"display_name": "Product Strategy", "brand_color": "#7C3AED"},
    "pm-execution": {"display_name": "PM Execution", "brand_color": "#059669"},
    "pm-market-research": {"display_name": "Market Research", "brand_color": "#0F766E"},
    "pm-data-analytics": {"display_name": "Data Analytics", "brand_color": "#DC2626"},
    "pm-go-to-market": {"display_name": "Go To Market", "brand_color": "#EA580C"},
    "pm-marketing-growth": {"display_name": "Marketing Growth", "brand_color": "#D97706"},
    "pm-toolkit": {"display_name": "PM Toolkit", "brand_color": "#4B5563"},
}

TOKEN_MAP = {
    "ab": "A/B",
    "api": "API",
    "gtm": "GTM",
    "icp": "ICP",
    "jtbd": "JTBD",
    "nda": "NDA",
    "okr": "OKR",
    "okrs": "OKRs",
    "ost": "OST",
    "pm": "PM",
    "prd": "PRD",
    "sql": "SQL",
    "ux": "UX",
    "wwas": "WWAS",
}


def plugin_dirs() -> list[Path]:
    return sorted(
        path
        for path in REPO_ROOT.iterdir()
        if path.is_dir() and (path / ".claude-plugin" / "plugin.json").is_file()
    )


def read_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def parse_frontmatter(path: Path) -> dict[str, str]:
    content = path.read_text(encoding="utf-8")
    lines = content.splitlines()
    if not lines or lines[0].strip() != "---":
        return {}

    data: dict[str, str] = {}
    for line in lines[1:]:
        if line.strip() == "---":
            break
        match = re.match(r"^([A-Za-z0-9_-]+):\s*(.+)$", line.strip())
        if not match:
            continue
        key, value = match.groups()
        data[key] = value.strip().strip('"').strip("'")
    return data


def humanize_slug(slug: str) -> str:
    parts = slug.split("-")
    suffix = ""
    if len(parts) > 1 and parts[-1] in {"new", "existing"}:
        label = "New Product" if parts[-1] == "new" else "Existing Product"
        suffix = f" ({label})"
        parts = parts[:-1]

    words: list[str] = []
    for part in parts:
        words.append(TOKEN_MAP.get(part, part.replace("_", " ").title()))
    return " ".join(words) + suffix


def first_clause(description: str) -> str:
    clause = re.split(r"\s+Use when\b", description, maxsplit=1)[0].strip()
    clause = clause.rstrip(". ")
    return f"{clause}." if clause else ""


def short_text(text: str, limit: int) -> str:
    normalized = " ".join(text.split())
    if len(normalized) <= limit:
        return normalized
    trimmed = normalized[: limit - 1].rsplit(" ", 1)[0].rstrip(",;:. ")
    return f"{trimmed}..."


def plugin_default_prompt(display_name: str, description: str) -> str:
    if ":" in description:
        tail = description.split(":", 1)[1].strip().rstrip(".")
        return f"Use {display_name} for {tail}."
    return f"Use {display_name} to help with product management work."


def quote_yaml(value: str) -> str:
    return json.dumps(value, ensure_ascii=False)


def build_plugin_openai_yaml(display_name: str, description: str) -> str:
    short_description = short_text(description, 90)
    default_prompt = plugin_default_prompt(display_name, description)
    return "\n".join(
        [
            "interface:",
            f"  display_name: {quote_yaml(display_name)}",
            f"  short_description: {quote_yaml(short_description)}",
            f"  default_prompt: {quote_yaml(default_prompt)}",
            "",
        ]
    )


def build_skill_openai_yaml(skill_name: str, description: str) -> str:
    display_name = humanize_slug(skill_name)
    core_description = first_clause(description)
    short_description = short_text(core_description or description, 90)
    default_prompt = core_description or f"Help with {display_name.lower()}."
    return "\n".join(
        [
            "interface:",
            f"  display_name: {quote_yaml(display_name)}",
            f"  short_description: {quote_yaml(short_description)}",
            f"  default_prompt: {quote_yaml(default_prompt)}",
            "",
        ]
    )


def write_if_changed(path: Path, content: str) -> bool:
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists() and path.read_text(encoding="utf-8") == content:
        return False
    path.write_text(content, encoding="utf-8")
    return True


def build_codex_manifest(claude_manifest: dict) -> dict:
    plugin_name = claude_manifest["name"]
    ui = PLUGIN_UI.get(plugin_name, {})
    display_name = ui.get("display_name", humanize_slug(plugin_name))
    description = claude_manifest["description"]
    author = claude_manifest.get("author", {})

    return {
        "name": plugin_name,
        "version": claude_manifest["version"],
        "description": description,
        "author": author,
        "homepage": claude_manifest.get("homepage", REPO_URL),
        "repository": REPO_URL,
        "license": claude_manifest.get("license", "MIT"),
        "keywords": claude_manifest.get("keywords", []),
        "skills": "./skills/",
        "interface": {
            "displayName": display_name,
            "shortDescription": short_text(description, 90),
            "longDescription": description,
            "developerName": author.get("name", "PM Skills Marketplace"),
            "category": "Productivity",
            "capabilities": ["Interactive", "Read", "Write"],
            "websiteURL": claude_manifest.get("homepage", REPO_URL),
            "defaultPrompt": plugin_default_prompt(display_name, description),
            "brandColor": ui.get("brand_color", "#2563EB"),
            "screenshots": [],
        },
    }


def generate_plugin(plugin_dir: Path) -> int:
    changed = 0
    claude_manifest = read_json(plugin_dir / ".claude-plugin" / "plugin.json")
    codex_manifest = build_codex_manifest(claude_manifest)

    manifest_path = plugin_dir / ".codex-plugin" / "plugin.json"
    manifest_content = json.dumps(codex_manifest, indent=2, ensure_ascii=False) + "\n"
    changed += int(write_if_changed(manifest_path, manifest_content))

    display_name = codex_manifest["interface"]["displayName"]
    description = claude_manifest["description"]
    plugin_agents_path = plugin_dir / "agents" / "openai.yaml"
    changed += int(
        write_if_changed(
            plugin_agents_path,
            build_plugin_openai_yaml(display_name, description),
        )
    )

    for skill_dir in sorted((plugin_dir / "skills").iterdir()):
        if not skill_dir.is_dir():
            continue
        frontmatter = parse_frontmatter(skill_dir / "SKILL.md")
        skill_name = frontmatter.get("name", skill_dir.name)
        skill_description = frontmatter.get("description", "")
        skill_agents_path = skill_dir / "agents" / "openai.yaml"
        changed += int(
            write_if_changed(
                skill_agents_path,
                build_skill_openai_yaml(skill_name, skill_description),
            )
        )

    return changed


def main() -> None:
    changed_files = 0
    for plugin_dir in plugin_dirs():
        changed_files += generate_plugin(plugin_dir)
    print(f"Updated {changed_files} Codex artifact files.")


if __name__ == "__main__":
    main()
