# 2026-05-11 Cross-Device GitHub Sync and Troubleshooting

## Source

Sanitized real-record excerpt from a private daily worklog.

## Goal

Bring a new machine into a GitHub-based worklog workflow while also handling technical troubleshooting across browser extensions, remote environments, and local storage cleanup.

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

## Next Actions

- Keep new-machine setup documented.
- Keep GitHub access fallback steps visible.
- Continue using report-first cleanup for local files.
- Recheck recent worklog dates before assuming records are complete.

## Private Details Removed

- [x] No credentials, keys, cookies, or session values
- [x] No full internal links, server details, or private file paths
- [x] No customer names, payment details, or private account details
- [x] No screenshots or exported private files
