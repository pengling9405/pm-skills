#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

SCOPE="project"
DRY_RUN=0

usage() {
  cat <<'EOF'
Install PM Skills into Codex without overwriting existing skills or prompts.

Usage:
  ./scripts/install_codex.sh [--scope project|global|both] [--dry-run]

Options:
  --scope   Install target. Defaults to "project".
            project -> <repo>/.codex/
            global  -> ${CODEX_HOME:-$HOME/.codex}/
            both    -> install to both locations
  --dry-run Show planned actions without writing files.
  -h, --help
EOF
}

log() {
  printf '%s\n' "$*"
}

fail() {
  printf 'ERROR: %s\n' "$*" >&2
  exit 1
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --scope)
      [[ $# -ge 2 ]] || fail "--scope requires a value"
      case "$2" in
        project|global|both)
          SCOPE="$2"
          ;;
        *)
          fail "invalid scope: $2"
          ;;
      esac
      shift 2
      ;;
    --dry-run)
      DRY_RUN=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      fail "unknown argument: $1"
      ;;
  esac
done

discover_sources() {
  local plugin_dir skill_dir prompt_file

  SKILL_SOURCES=()
  PROMPT_SOURCES=()

  for plugin_dir in "${REPO_ROOT}"/pm-*; do
    [[ -d "${plugin_dir}" ]] || continue

    for skill_dir in "${plugin_dir}"/skills/*; do
      [[ -d "${skill_dir}" ]] || continue
      SKILL_SOURCES+=("${skill_dir}")
    done

    for prompt_file in "${plugin_dir}"/commands/*.md; do
      [[ -f "${prompt_file}" ]] || continue
      PROMPT_SOURCES+=("${prompt_file}")
    done
  done
}

validate_unique_sources() {
  local src name duplicate previous
  local skill_names=()
  local prompt_names=()

  for src in "${SKILL_SOURCES[@]}"; do
    name="$(basename "${src}")"
    skill_names+=("${name}")
  done

  for src in "${PROMPT_SOURCES[@]}"; do
    name="$(basename "${src}")"
    prompt_names+=("${name}")
  done

  while IFS= read -r duplicate; do
    [[ -n "${duplicate}" ]] || continue
    previous=""
    for src in "${SKILL_SOURCES[@]}"; do
      if [[ "$(basename "${src}")" == "${duplicate}" ]]; then
        if [[ -z "${previous}" ]]; then
          previous="${src}"
        else
          fail "duplicate skill name '${duplicate}' found in '${previous}' and '${src}'"
        fi
      fi
    done
  done < <(printf '%s\n' "${skill_names[@]}" | sort | uniq -d)

  while IFS= read -r duplicate; do
    [[ -n "${duplicate}" ]] || continue
    previous=""
    for src in "${PROMPT_SOURCES[@]}"; do
      if [[ "$(basename "${src}")" == "${duplicate}" ]]; then
        if [[ -z "${previous}" ]]; then
          previous="${src}"
        else
          fail "duplicate prompt name '${duplicate}' found in '${previous}' and '${src}'"
        fi
      fi
    done
  done < <(printf '%s\n' "${prompt_names[@]}" | sort | uniq -d)
}

target_exists() {
  local path="$1"
  local existing
  for existing in "${TARGET_PATHS[@]-}"; do
    if [[ "${existing}" == "${path}" ]]; then
      return 0
    fi
  done
  return 1
}

copy_skill() {
  local label="$1"
  local target_root="$2"
  local src="$3"
  local dest_dir="${target_root}/skills"
  local dest="${dest_dir}/$(basename "${src}")"

  if [[ -e "${dest}" ]]; then
    log "SKIP  [${label}] skill  $(basename "${src}") -> ${dest} (exists)"
    SKIPPED_SKILLS=$((SKIPPED_SKILLS + 1))
    return
  fi

  log "$( [[ ${DRY_RUN} -eq 1 ]] && printf 'PLAN ' || printf 'COPY ' )[${label}] skill  $(basename "${src}") -> ${dest}"
  if [[ ${DRY_RUN} -eq 0 ]]; then
    mkdir -p "${dest_dir}"
    cp -R "${src}" "${dest}"
  fi
  INSTALLED_SKILLS=$((INSTALLED_SKILLS + 1))
}

copy_prompt() {
  local label="$1"
  local target_root="$2"
  local src="$3"
  local dest_dir="${target_root}/prompts"
  local dest="${dest_dir}/$(basename "${src}")"

  if [[ -e "${dest}" ]]; then
    log "SKIP  [${label}] prompt $(basename "${src}") -> ${dest} (exists)"
    SKIPPED_PROMPTS=$((SKIPPED_PROMPTS + 1))
    return
  fi

  log "$( [[ ${DRY_RUN} -eq 1 ]] && printf 'PLAN ' || printf 'COPY ' )[${label}] prompt $(basename "${src}") -> ${dest}"
  if [[ ${DRY_RUN} -eq 0 ]]; then
    mkdir -p "${dest_dir}"
    cp "${src}" "${dest}"
  fi
  INSTALLED_PROMPTS=$((INSTALLED_PROMPTS + 1))
}

install_scope() {
  local label="$1"
  local target_root="$2"
  local src

  INSTALLED_SKILLS=0
  INSTALLED_PROMPTS=0
  SKIPPED_SKILLS=0
  SKIPPED_PROMPTS=0

  log
  log "==> ${label} target: ${target_root}"
  if [[ ${DRY_RUN} -eq 1 ]]; then
    log "Mode: dry-run"
  else
    mkdir -p "${target_root}"
  fi

  for src in "${SKILL_SOURCES[@]}"; do
    copy_skill "${label}" "${target_root}" "${src}"
  done

  for src in "${PROMPT_SOURCES[@]}"; do
    copy_prompt "${label}" "${target_root}" "${src}"
  done

  log "Summary [${label}] installed skills=${INSTALLED_SKILLS}, installed prompts=${INSTALLED_PROMPTS}, skipped skills=${SKIPPED_SKILLS}, skipped prompts=${SKIPPED_PROMPTS}"

  TOTAL_INSTALLED_SKILLS=$((TOTAL_INSTALLED_SKILLS + INSTALLED_SKILLS))
  TOTAL_INSTALLED_PROMPTS=$((TOTAL_INSTALLED_PROMPTS + INSTALLED_PROMPTS))
  TOTAL_SKIPPED_SKILLS=$((TOTAL_SKIPPED_SKILLS + SKIPPED_SKILLS))
  TOTAL_SKIPPED_PROMPTS=$((TOTAL_SKIPPED_PROMPTS + SKIPPED_PROMPTS))
}

discover_sources
validate_unique_sources

TOTAL_INSTALLED_SKILLS=0
TOTAL_INSTALLED_PROMPTS=0
TOTAL_SKIPPED_SKILLS=0
TOTAL_SKIPPED_PROMPTS=0

PROJECT_TARGET="${REPO_ROOT}/.codex"
GLOBAL_TARGET="${CODEX_HOME:-$HOME/.codex}"

TARGET_LABELS=()
TARGET_PATHS=()

add_target() {
  local label="$1"
  local path="$2"
  if target_exists "${path}"; then
    return
  fi
  TARGET_LABELS+=("${label}")
  TARGET_PATHS+=("${path}")
}

case "${SCOPE}" in
  project)
    add_target "project" "${PROJECT_TARGET}"
    ;;
  global)
    add_target "global" "${GLOBAL_TARGET}"
    ;;
  both)
    add_target "project" "${PROJECT_TARGET}"
    add_target "global" "${GLOBAL_TARGET}"
    ;;
esac

log "Discovered ${#SKILL_SOURCES[@]} skills and ${#PROMPT_SOURCES[@]} prompts."

for i in "${!TARGET_LABELS[@]}"; do
  install_scope "${TARGET_LABELS[$i]}" "${TARGET_PATHS[$i]}"
done

log
log "Overall summary: installed skills=${TOTAL_INSTALLED_SKILLS}, installed prompts=${TOTAL_INSTALLED_PROMPTS}, skipped skills=${TOTAL_SKIPPED_SKILLS}, skipped prompts=${TOTAL_SKIPPED_PROMPTS}"
