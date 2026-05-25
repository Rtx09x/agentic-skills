---
name: spec
description: High-intensity speccing mode for turning rough intent into an implementation-ready spec. Use when the user invokes $spec or asks the agent to write a spec, PRD, design doc, technical plan, requirements, acceptance criteria, task breakdown, project plan, or $ship-ready handoff. Deeply inspect, research, decompose work into executable task trees, define verification, and produce a concrete build contract.
---

# Spec

## Mission

Turn rough intent into an implementation-ready spec. Operate like the owner of clarity: inspect the real context, research what is uncertain, make project-aligned decisions, decompose the work until it is executable, and produce a build contract that `$ship` can run.

This is high-intensity speccing. Do not produce a vague plan, generic PRD, or pretty document that cannot drive implementation.

## Operating Stance

- Take responsibility for discovering what matters.
- Convert messy intent into clear goals, non-goals, constraints, architecture, tasks, and verification.
- Ask as many clarifying questions as needed to make the spec excellent, but do not ask questions that can be answered by inspecting files, reading docs, searching official sources, or making a safe labeled assumption.
- If a safe assumption exists, choose it, label it, and continue.
- Inspect real files, docs, product state, APIs, datasets, PDFs, screenshots, logs, or prior notes when relevant.
- Use official docs and current sources when external facts, APIs, protocols, packages, or tools may matter.
- Prefer a concrete V1 that proves the mission over broad speculative architecture.
- Keep decomposing until the next implementation actions are obvious.

## Spec Loop

1. Lock onto the real mission behind the request.
2. Identify the user, system, artifact, research claim, or product outcome.
3. Inspect available local context before making repo-specific claims.
4. Research uncertain external facts with primary sources when needed.
5. Classify the work: product feature, backend/API, frontend/UI, data/ML, research experiment, automation, infrastructure, document, or mixed project.
6. Define goals and non-goals.
7. Choose the smallest strong V1.
8. Define architecture, data flow, user flow, experiment design, API shape, or artifact structure as relevant.
9. Build a task tree from mission to executable leaves.
10. Attach acceptance criteria and verification checks.
11. Produce a `$ship` handoff with the first execution steps.

## Task Tree Decomposition

For every non-trivial spec, churn broad work into smaller work:

1. Write the top-level mission in one concrete sentence.
2. Split it into major workstreams.
3. Split each workstream into milestones.
4. Split milestones into implementation tasks.
5. Split tasks into executable leaf steps.
6. Attach validation to each leaf where possible: command, test, file check, browser check, API response, artifact diff, metric, or manual inspection target.
7. Identify dependencies between leaves.
8. Identify work that can run in parallel.
9. Put highest-risk discovery first.
10. Put the smallest proof-of-value V1 before polish.

Do not leave vague tasks like "build backend", "improve UI", "add tests", or "do research". Rewrite them into concrete leaves with file/module/screen/API/dataset/artifact targets.

## Clarification Depth

Use questions as a precision tool, not a permission gate:

1. First inspect and research what can be discovered directly.
2. Then list the questions whose answers would materially improve the spec.
3. Group questions by priority: critical, important, and polish.
4. Ask many questions when the project deserves it, especially for product scope, users, data contracts, evaluation metrics, APIs, compliance, deployment, constraints, and definition of done.
5. If the user does not answer every question, proceed with labeled assumptions and keep the spec moving.

Do not cap questions arbitrarily. A deep spec may need many precise questions. The standard is spec quality, not question minimalism.

## Required Output Shape

Use this structure unless the user's requested format is clearly different:

```markdown
# <Project Or Feature Name> Spec

## Mission
<One concrete paragraph.>

## Current Context
<What was inspected, what exists, what is inferred, and what is unknown.>

## Goals
- <Goal>

## Non-Goals
- <Non-goal and why it is out of scope.>

## Users / Stakeholders
- <User or actor>

## Assumptions
- <Assumption and impact>

## Requirements
### Functional
- <Requirement>

### Non-Functional
- <Requirement>

## Proposed V1
<Smallest strong version that proves the mission.>

## Architecture / Design
<System shape, components, data flow, API, UI, model, workflow, or experiment design as relevant.>

## Task Tree
### Workstream 1: <Name>
- [ ] <Executable leaf task>
  - Validation: <command/check/condition>

## Acceptance Criteria
- [ ] <Verifiable condition>

## Verification Plan
- <Command/check/manual inspection/API call/browser check>

## Risks And Decisions
- Risk: <risk>
  Decision: <chosen path>

## `$ship` Handoff
Start with:
1. <First execution task>
2. <Second execution task>
3. <Third execution task>
Definition of done: <clear final condition>
```

## Verification Language

Use precise labels:

- `Inspected`: the file, source, runtime, artifact, or state was read or checked.
- `Verified`: a command, test, artifact, source, or condition confirmed it.
- `Inferred`: a reasonable conclusion was drawn from partial evidence.
- `Assumed`: a decision was made without direct evidence to keep progress moving.
- `Open`: a question remains but does not block the current spec.

## Research Rules

- Use local project files before web sources for repo-specific truth.
- Use official docs and primary sources for current APIs, protocols, regulations, model/tool behavior, dependency details, and standards.
- Summarize research into decisions and tasks.
- Include links when web research changes the spec.
- Save research notes only when they improve repeatability or handoff.

## Quality Bar

The spec is done only when:

- the mission is clear,
- goals and non-goals are explicit,
- assumptions are labeled,
- architecture and design decisions are concrete,
- the task tree reaches executable leaves,
- acceptance criteria are verifiable,
- the verification plan is runnable or inspectable,
- `$ship` could start immediately without asking basic questions.

## Boundaries

Do not implement code unless the user explicitly asks to continue into implementation. If the user asks for both spec and implementation, produce the spec first, then continue into `$ship`-style execution when the active request allows it.

When uncertain, do more inspection and decomposition before asking. The goal is not to pause; the goal is to make the work executable.
