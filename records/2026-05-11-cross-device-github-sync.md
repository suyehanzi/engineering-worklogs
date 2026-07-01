# 2026-05-11 Cross-Device GitHub Sync and Troubleshooting

## Source

Sanitized real-record excerpt from a private daily worklog.

## Goal

Bring a new machine into a GitHub-based worklog workflow while also handling technical troubleshooting across browser extensions, remote environments, and local storage cleanup.

## Context

The worklog system needed to stay usable across multiple machines instead of depending on one device. The private workflow included cloud machines, Windows machines, and Mac devices. The public record keeps the method: use GitHub as the durable sync layer, confirm access on each machine, document network fallback steps, and review local files before cleanup.

This record also captures a recurring issue with worklog automation: if a review only scans today's file, it can miss work that happened earlier in the week or was added from another machine. A weekly review rule was later added to reduce that risk.

## Timeline

- `15:51` Converted a successful browser-extension installation process into reusable documentation for future machines.
- `21:06` Connected a new machine to GitHub access and reviewed available repositories.
- `21:20` Added machine access through a user-confirmed browser flow.
- `21:35` Switched GitHub SSH traffic to port `443` after the default route was blocked by the current network.
- `21:58` Ran the first worklog scan on the new machine.
- `23:06` Performed a structured disk review before any deletion, then cleaned only the confirmed files.

## What Changed

- Documented a repeatable browser-extension installation flow.
- Cloned the private worklog repository onto the new machine after access was confirmed.
- Added a network fallback route for GitHub SSH access.
- Separated machine-specific worklog headings and bottom-of-file sync sections.
- Reviewed local storage before deletion and kept high-risk personal files untouched.

## Detailed Work Notes

- Turned a one-time browser-extension setup into repeatable documentation.
- Added the new machine to the GitHub-backed worklog workflow only after the browser confirmation step completed.
- Used a fallback route for GitHub SSH when the normal route was blocked by the current network.
- Confirmed that the worklog repository could be read locally before treating the machine as ready.
- Kept machine-specific headings so records from different devices could be traced without publishing device identifiers.
- Used a report-first cleanup process: list, review, confirm, then delete only approved files.
- Added a weekly review rule to scan the current week's records and fill missing items that daily automation missed.

## Evidence

- GitHub authentication succeeded through the adjusted route.
- The worklog repository was readable from the new machine.
- The first local scan covered the recent review window.
- Browser extension connectivity was verified through a test page.
- Disk cleanup was based on reports, size checks, duplicate checks, and explicit confirmation.

## Problems

- A network can block the default GitHub SSH route even when account access is valid.
- Browser extension installation may need user confirmation because browser policy changes are sensitive.
- Direct file cleanup is risky without a report-first workflow.
- Worklog automation can miss cross-date work if it only checks files created that day.

## Decisions

- Use GitHub as the shared sync point instead of manually copying notes between machines.
- Keep local records current on each machine, but publish only sanitized excerpts.
- Keep the fallback network route documented because it may be needed again.
- Use a weekly audit step to catch missing records, duplicate fragments, and noisy tool-repair notes.
- Do not delete local files directly from a rough guess; generate a report first.

## Weekly Review Rule

The weekly review step checks the current week's private records and asks:

- Did any solved task fail to get recorded?
- Did a machine write a local note that was not synchronized yet?
- Did a small tool self-repair note create noise that should be filtered out?
- Did any follow-up need to be added to the next week?
- Is the public excerpt still safe after redaction?

This is why public records can be more useful than raw notes. Raw notes preserve activity. Reviewed notes preserve decisions, evidence, and next actions.

## Next Actions

- Keep new-machine setup documented.
- Keep GitHub access fallback steps visible.
- Continue using report-first cleanup for local files.
- Recheck recent worklog dates before assuming records are complete.

## Reviewer Notes

This record is useful for judging written collaboration and operational reliability. It shows a practical method for keeping work records current across devices, handling network friction, and using review rules to catch missing documentation.

## Private Details Removed

- [x] No credentials, keys, cookies, or session values
- [x] No full internal links, server details, or private file paths
- [x] No customer names, payment details, or private account details
- [x] No screenshots or exported private files
