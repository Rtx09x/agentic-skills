# Agentic Skills

High-agency agent skills for turning rough intent into executable specs and shipped work.

This repository contains two companion skills:

- `$spec`: deep executable spec builder.
- `$ship`: extreme implementation mode.

Use `$spec` when the work is fuzzy and needs to become a concrete build contract. Use `$ship` when the work is ready to execute and should be driven through implementation, verification, polish, and handoff.

## Skills

| Skill | Purpose | Use When |
| --- | --- | --- |
| [`spec`](skills/spec/SKILL.md) | Convert rough ideas into implementation-ready specs with task trees, acceptance criteria, and verification plans. | You need a PRD, design doc, technical plan, task breakdown, requirements, or `$ship` handoff. |
| [`ship`](skills/ship/SKILL.md) | Execute end-to-end with high agency: inspect, implement, work through blockers, verify, polish, and report. | You want an AI agent to build, debug, research, verify, and keep moving until the requested outcome is handled. |

## Install

### Windows PowerShell

```powershell
git clone https://github.com/Rtx09x/agentic-skills.git
cd agentic-skills
.\scripts\install.ps1
```

### macOS / Linux

```bash
git clone https://github.com/Rtx09x/agentic-skills.git
cd agentic-skills
./scripts/install.sh
```

These skills are plain Markdown skill folders with optional agent UI metadata. They are currently packaged in a Codex-compatible layout and can be adapted to any agent runtime that supports reusable prompt/skill files.

By default, the install scripts target Codex-compatible skill directories:

- `$env:CODEX_HOME\skills` on Windows when `CODEX_HOME` is set.
- `$CODEX_HOME/skills` on Unix when `CODEX_HOME` is set.
- `~/.codex/skills` otherwise.

To install somewhere else:

```powershell
.\scripts\install.ps1 -Destination "C:\path\to\skills"
```

```bash
./scripts/install.sh /path/to/skills
```

## Manual Install / Agent Adaptation

For Codex-compatible agents, copy each skill folder into your skills directory:

```text
skills/spec -> ~/.codex/skills/spec
skills/ship -> ~/.codex/skills/ship
```

Each skill folder must keep this shape:

```text
skill-name/
+-- SKILL.md
+-- agents/
    +-- openai.yaml
```

For other agents, copy the relevant `SKILL.md` content into that agent's reusable instruction, rule, prompt, or skill mechanism. The files are intentionally self-contained and do not require Codex-specific tools at runtime.

## Usage

Use `$spec` to shape the work:

```text
Use $spec to turn this product idea into an implementation-ready spec with a task tree, acceptance criteria, verification plan, and $ship handoff.
```

Use `$ship` to execute:

```text
Use $ship to implement this end-to-end, work through blockers, verify it, and report exactly what changed.
```

Recommended workflow:

1. Run `$spec` for new, ambiguous, high-stakes, or multi-step work.
2. Review the generated task tree and acceptance criteria.
3. Run `$ship` to execute the plan.
4. Require final reporting with exact files, commands, verification status, and remaining risk.

## Philosophy

These skills are built around a simple operating model:

- own the outcome,
- inspect the real system,
- research current facts when uncertain,
- decompose big work into executable tasks,
- keep moving through blockers,
- verify honestly,
- report with receipts.

`$spec` optimizes for clarity. `$ship` optimizes for execution.

## Repository Layout

```text
.
+-- skills/
|   +-- spec/
|   |   +-- SKILL.md
|   |   +-- agents/openai.yaml
|   +-- ship/
|       +-- SKILL.md
|       +-- agents/openai.yaml
+-- scripts/
|   +-- install.ps1
|   +-- install.sh
|   +-- validate-layout.ps1
+-- docs/
|   +-- usage.md
+-- releases/
|   +-- v0.1.0.md
+-- CHANGELOG.md
+-- LICENSE
```

## Validate

Run the lightweight layout check:

```powershell
.\scripts\validate-layout.ps1
```

If you have the Codex skill creator validator available, also run:

```powershell
python "$env:CODEX_HOME\skills\.system\skill-creator\scripts\quick_validate.py" ".\skills\spec"
python "$env:CODEX_HOME\skills\.system\skill-creator\scripts\quick_validate.py" ".\skills\ship"
```

## License

MIT.
