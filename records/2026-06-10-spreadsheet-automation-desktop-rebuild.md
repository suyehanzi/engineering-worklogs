# 2026-06-10 Spreadsheet Automation and Desktop Rebuild

## Source

Sanitized real-record excerpt from a private daily worklog.

## Goal

Maintain a membership/service spreadsheet through script-based generation, then repair a desktop app rebuild issue caused by the difference between terminal and GUI environments on macOS.

## Timeline

- `Morning` Updated a monthly service spreadsheet through the build script rather than editing the workbook manually.
- `Review` Rebuilt the final workbook, cleaned output artifacts, and updated the summary notes.
- `Afternoon` Investigated a desktop app update failure from logs before retrying.
- `Repair` Found that the GUI process did not inherit the same executable path as the terminal session.
- `Verify` Rebuilt and launched the desktop app, then checked process state and visible version information.

## What Changed

- Added new service entries and status notes through source data and generation scripts.
- Regenerated the final spreadsheet output.
- Updated the README summary for the spreadsheet output.
- Adjusted the GUI environment for the current login session.
- Rebuilt and replaced the desktop app bundle.

## Evidence

- Spreadsheet formula checks returned zero errors.
- The output directory contained only the final workbook after cleanup.
- Summary totals matched the regenerated workbook.
- The desktop app backend reported ready after rebuild.
- The GUI opened and displayed the expected visible version state.

## Problems

- Manual workbook edits can hide mistakes; script-first generation gives a repeatable path.
- Some membership dates and service dates differ, so notes are required to avoid later confusion.
- macOS GUI apps can have a different environment from terminal sessions.
- An update failure can be a rebuild environment issue rather than an account or backend failure.

## Next Actions

- Keep spreadsheet outputs generated from reviewed source data.
- Keep member/service notes separate from private account details.
- Check GUI environment before assuming an app update failed at the backend.

## Private Details Removed

- [x] No credentials, keys, cookies, or session values
- [x] No full internal links, server details, or private file paths
- [x] No customer names, payment details, or private account details
- [x] No screenshots or exported private files
