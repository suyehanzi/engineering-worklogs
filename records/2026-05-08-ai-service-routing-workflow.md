# 2026-05-08 AI Service Routing and Account Workflow

## Source

Sanitized real-record excerpt from a private daily worklog.

## Goal

Turn a self-hosted AI service setup into a more usable customer-facing workflow with clear routing, account separation, web chat delivery, and operational limits.

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

## Evidence

- Service requests returned successful responses after routing was corrected.
- The web chat entry point displayed the intended model options.
- Local network behavior improved after route handling was adjusted.
- Repository states were reviewed before archival or public presentation.

## Problems

- A working service key can still fail if the client sends it to the wrong endpoint.
- Too many model choices make a product harder for non-technical users to operate.
- Image generation and long-running requests need explicit limits because they consume shared capacity.
- Local proxy behavior can affect unrelated desktop apps if routing rules are too broad.

## Next Actions

- Keep customer-facing choices simple.
- Keep user routing and usage accounting separate from administrator configuration.
- Review public repository state before linking it from resumes or profiles.
- Maintain written troubleshooting notes for recurring service failures.

## Private Details Removed

- [x] No credentials, keys, cookies, or session values
- [x] No full internal links, server details, or private file paths
- [x] No customer names, payment details, or private account details
- [x] No screenshots or exported private files
