# 贡献指南

PM Skills Marketplace 由 [Paweł Huryn](https://www.productcompass.pm)（pawel@productcompass.pm）维护。欢迎任何形式的贡献，无论是修复 bug、修正文案错误，还是提出新的 skill 想法。

## 如何贡献

- **Bug 和小修复**：可以直接提 PR。
- **新的 skills、commands 或较大改动**：请先开 issue，方便先讨论实现方式。

## 指南

- 保持 PR 聚焦，每个 PR 只做一件事。
- 遵循现有模式：skills 使用名词（领域知识），commands 使用动词（工作流）。
- 每个 skill 都必须有包含 `name` 和 `description` 的 frontmatter。每个 command 都必须有 `description` 和 `argument-hint`。
- Skill 的 `name` 必须与目录名一致。
- commands 中不要跨插件引用。后续建议只用自然语言表达。
- 所有贡献者都会被公开列出。
- 提交前请先运行校验器：`python3 validate_plugins.py`

## 许可证

提交贡献即表示你同意这些内容将以 [MIT License](LICENSE) 进行授权。
