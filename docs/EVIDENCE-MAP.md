# Evidence Map

This page maps the public worklog records to the practical skills they demonstrate. It is written for reviewers who want to understand what the records prove without reading every file first.

## Skill Areas

| Skill area | What to review | Evidence in this repository |
| --- | --- | --- |
| Project and customer operations | Requirement intake, task breakdown, progress notes, delivery checks, follow-up actions | Customer-facing workflow records, document delivery record, weekly review method |
| Technical troubleshooting | Reproduce a failure, isolate the likely cause, test a small repair, record the verification path | Network route fallback, desktop rebuild issue, browser-extension setup, remote cleanup |
| Automation and tooling | Replace repeated manual work with scripts or structured workflows, then verify outputs | Spreadsheet generation, PDF rendering checks, public-safety checker, GitHub sync |
| Written collaboration | Convert work into durable written records for asynchronous review | Every record uses goal, timeline, changes, evidence, problems, next actions |
| Public safety and redaction | Preserve useful engineering details while removing private context | Policy, redaction checklist, checker, sanitized records |
| Multi-device workflow | Keep local notes current across different machines without losing context | Cross-device sync record, weekly audit method, GitHub-backed workflow |
| Browser automation and extension work | Build repeatable browser workflows, inspect page behavior, isolate shared browser state | Public case studies for browser automation and shared-environment chat isolation |
| Apple ecosystem usability review | Record visible issues in macOS, iPhone, and iPad use without relying on unsupported internal claims | Public Apple usability case study |

## Record To Skill Mapping

| Record | Main skills shown | Why it matters |
| --- | --- | --- |
| [Public release cleanup and admin workflow](../records/2026-04-24-public-release-cleanup.md) | Release hygiene, admin workflow review, mobile verification, public-safety checks | Shows that public-facing material and operational behavior are checked before release. |
| [AI service routing and account workflow](../records/2026-05-08-ai-service-routing-workflow.md) | Service routing, customer workflow simplification, risk control, support documentation | Shows the ability to turn a technical backend into a simpler user-facing flow. |
| [Cross-device GitHub sync and troubleshooting](../records/2026-05-11-cross-device-github-sync.md) | GitHub sync, network fallback, new machine setup, report-first cleanup | Shows a practical multi-machine working method with evidence and recovery steps. |
| [Remote cleanup and automation failure record](../records/2026-05-24-remote-cleanup-automation-record.md) | Access cleanup, permission boundaries, automation failure logging | Shows operational discipline when a remote task or scheduled task does not fully succeed. |
| [Spreadsheet automation and desktop rebuild](../records/2026-06-10-spreadsheet-automation-desktop-rebuild.md) | Spreadsheet generation, data review, macOS environment troubleshooting, rebuild verification | Shows script-first handling of repeated data work and careful repair of desktop app issues. |
| [Document automation and resume delivery](../records/2026-07-01-document-automation-resume-delivery.md) | Spreadsheet processing, document generation, PDF verification, visible-link delivery | Shows end-to-end document automation with rendered output checks. |

## Case Study Coverage

The [public case studies](CASE-STUDIES.md) add project-style detail beyond dated records:

- Browser automation and data export.
- Shared-environment chat isolation extension.
- Customer technical support operations.
- Apple ecosystem usability notes.

## How To Read A Record

Each record is intentionally structured:

1. Goal: what the work was trying to accomplish.
2. Context: the situation and constraints, without private details.
3. Timeline: the order of important work.
4. Work performed: the concrete actions taken.
5. Evidence: how the result was checked.
6. Problems: what went wrong or what needed extra care.
7. Decisions: trade-offs made during the work.
8. Next actions: what should happen after the record.
9. Public boundary: what was removed before publishing.

This structure makes a record useful even when the reader was not present for the original task.
