# 2026-05-08 AI Service Routing and Account Workflow

## Source

Sanitized real-record excerpt from a private daily worklog.

## Goal

Turn a self-hosted AI service setup into a more usable customer-facing workflow with clear routing, account separation, web chat delivery, and operational limits.

## Context

The original setup was technically usable but not yet clean enough for repeated customer delivery. A working backend path is only one part of the job. Users also need a stable entry point, a small set of understandable choices, clear usage boundaries, and support notes that can be followed without a live explanation.

The work focused on reducing confusion. Instead of exposing every backend option, the customer-facing layer needed a simpler route, clearer labels, and a more predictable support process.

## Timeline

- `13:57` Diagnosed a client request failure and traced it to a mismatch between service key usage and the configured compatible endpoint.
- `14:58` Reviewed local proxy and network routing behavior after a desktop application failed to send media normally.
- `15:57` Reviewed GitHub repositories and separated projects to keep, archive, or treat cautiously.
- `21:16` Set up a web chat entry point, connected it to the existing service backend, and reduced confusing model choices for non-technical users.
- `23:17` Continued refining the customer-facing flow, including account mapping, usage display, image generation limits, and manual top-up wording.

## What Changed

- Reworked service routing so user-facing tools called the intended backend path.
- Added clearer model display and reduced unnecessary choices in the web chat interface.
- Built a plan for per-user account separation instead of one shared upstream path.
- Added operational guidance for concurrency, image generation, usage display, and manual customer support.
- Checked repository visibility and archived projects that were not ready for public use.

## Detailed Work Notes

- Compared the client behavior with the configured service route and found that the request was reaching the wrong compatible path.
- Treated local proxy behavior as a possible cause when a desktop application could not send media reliably.
- Reduced the visible model list so non-technical users would not need to understand every backend option.
- Kept administrator configuration separate from the customer-facing entry point.
- Wrote support wording for limits and manual follow-up so delivery could be repeated.
- Reviewed public repository visibility before using any project as public evidence.

## Evidence

- Service requests returned successful responses after routing was corrected.
- The web chat entry point displayed the intended model options.
- Local network behavior improved after route handling was adjusted.
- Repository states were reviewed before archival or public presentation.

## Decisions

- Prefer a small, understandable customer-facing model list over exposing every option.
- Keep user routing, usage display, and support notes documented in writing.
- Treat service failures as route and configuration problems first, not only as account problems.
- Archive or hide projects that were not ready to be linked publicly.

## Problems

- A working service key can still fail if the client sends it to the wrong endpoint.
- Too many model choices make a product harder for non-technical users to operate.
- Image generation and long-running requests need explicit limits because they consume shared capacity.
- Local proxy behavior can affect unrelated desktop apps if routing rules are too broad.

## Operational Lessons

- A customer-ready workflow needs fewer choices, not more choices.
- Written support notes reduce repeated explanation.
- Public evidence should be reviewed before being linked from a resume or profile.
- Service routing should be tested from the same kind of client the customer will use.

## Next Actions

- Keep customer-facing choices simple.
- Keep user routing and usage accounting separate from administrator configuration.
- Review public repository state before linking it from resumes or profiles.
- Maintain written troubleshooting notes for recurring service failures.

## Reviewer Notes

This record is useful for judging customer operations, AI tool configuration, and technical troubleshooting. It shows the path from a backend configuration issue to a more stable delivery process: diagnose the failure, simplify the interface, document limits, and check public-facing project evidence.

## Private Details Removed

- [x] No credentials, keys, cookies, or session values
- [x] No full internal links, server details, or private file paths
- [x] No customer names, payment details, or private account details
- [x] No screenshots or exported private files
