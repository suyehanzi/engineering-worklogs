# 2026-06-10 Spreadsheet Automation and Desktop Rebuild

## Source

Sanitized real-record excerpt from a private daily worklog.

## Goal

Maintain a membership/service spreadsheet through script-based generation, then repair a desktop app rebuild issue caused by the difference between terminal and GUI environments on macOS.

## Context

The spreadsheet work was recurring operational data work. Manual editing would have been possible, but it would also make missed rows, inconsistent notes, and formula errors harder to catch. The safer approach was to keep source data reviewed, generate the workbook through a repeatable script, and verify formulas and totals after output.

The desktop repair was a separate technical troubleshooting task. The application behaved differently when launched from the macOS interface than it did from a terminal environment. That difference made the rebuild look like a deeper application issue until the environment mismatch was isolated.

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

## Detailed Work Notes

- Treated spreadsheet updates as source-data changes plus workbook generation, not direct workbook editing.
- Kept service notes separate from private account details so the public summary could describe the method safely.
- Regenerated the workbook after reviewing new entries and status notes.
- Checked formulas after generation instead of relying on visual inspection alone.
- Cleaned output artifacts so the final directory did not contain confusing old files.
- Investigated the desktop app update from logs before retrying the same build step.
- Compared terminal behavior with macOS interface behavior and isolated the mismatch to the GUI launch environment.
- Rebuilt and launched the app after adjusting the current session environment.

## Evidence

- Spreadsheet formula checks returned zero errors.
- The output directory contained only the final workbook after cleanup.
- Summary totals matched the regenerated workbook.
- The desktop app backend reported ready after rebuild.
- The GUI opened and displayed the expected visible version state.

## Decisions

- Prefer script-first spreadsheet generation for repeated monthly work.
- Keep final workbook output separate from source data and temporary artifacts.
- Verify formulas and totals after generation.
- Treat macOS terminal and GUI environments as different execution contexts during troubleshooting.
- Do not assume a failed app update is a backend failure until launch environment is checked.

## Problems

- Manual workbook edits can hide mistakes; script-first generation gives a repeatable path.
- Some membership dates and service dates differ, so notes are required to avoid later confusion.
- macOS GUI apps can have a different environment from terminal sessions.
- An update failure can be a rebuild environment issue rather than an account or backend failure.

## Validation Checklist

- Source rows reviewed before generation.
- Workbook regenerated from the script.
- Formula check passed.
- Output folder cleaned.
- Summary totals reviewed.
- Desktop app rebuilt.
- Visible app state checked after launch.

## Next Actions

- Keep spreadsheet outputs generated from reviewed source data.
- Keep member/service notes separate from private account details.
- Check GUI environment before assuming an app update failed at the backend.

## Reviewer Notes

This record is useful for judging Excel automation and macOS troubleshooting. It shows a preference for repeatable generation, verification after output, and careful separation between terminal success and GUI success.

## Private Details Removed

- [x] No credentials, keys, cookies, or session values
- [x] No full internal links, server details, or private file paths
- [x] No customer names, payment details, or private account details
- [x] No screenshots or exported private files
