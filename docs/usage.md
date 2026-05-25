# Usage Guide

## `$spec`

Use `$spec` when a project needs sharper definition before implementation.

Good prompts:

```text
Use $spec to turn this hackathon idea into a build-ready technical spec.
```

```text
Use $spec to inspect this repo and produce an implementation-ready migration plan with task tree and verification.
```

Expected output:

- mission,
- current context,
- goals and non-goals,
- assumptions,
- functional and non-functional requirements,
- proposed V1,
- architecture or design,
- task tree,
- acceptance criteria,
- verification plan,
- risks and decisions,
- `$ship` handoff.

## `$ship`

Use `$ship` when the project needs direct execution.

Good prompts:

```text
Use $ship to implement the spec, verify it, and report exact files and commands.
```

```text
Use $ship to debug this failing workflow and keep going until the best working route is shipped.
```

Expected behavior:

- inspect real files and runtime state,
- make project-aligned assumptions,
- break work into executable tasks,
- implement surgically,
- work through blockers,
- verify in layers,
- produce a concise final report.

## Combining Them

For large work:

```text
Use $spec first to produce the implementation-ready plan. Then use $ship to execute it end-to-end.
```

For already clear work:

```text
Use $ship directly.
```

## Verification Labels

The skills use precise verification language:

- `Inspected`: source, file, runtime, or artifact was checked.
- `Implemented`: code, config, or artifacts were changed.
- `Syntax-checked`: parser, formatter, type, or lint-level check passed.
- `Unit-tested`: focused automated tests passed.
- `Smoke-tested`: representative minimal workflow passed.
- `Integration-tested`: multiple components were exercised together.
- `Full-run verified`: actual requested workflow completed.
- `Not verified`: check was skipped, unavailable, blocked, or replaced by weaker evidence.
