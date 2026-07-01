# Worklog Method

This document explains the method behind the public records. The goal is to make work reviewable without relying on memory, spoken explanation, or private screenshots.

## Operating Principle

A useful worklog is not a diary. It should answer practical questions:

- What was the goal?
- What changed?
- Why did this path make sense?
- How was the result checked?
- What failed or remained uncertain?
- What should another person do next?
- What private details were removed before sharing?

## Daily Capture Flow

1. Start from the current task or issue.
2. Write the goal in one or two sentences.
3. Record the important sequence of work, especially decisions and repair attempts.
4. Keep commands and outputs only when they are safe and useful.
5. Summarize verification in plain language.
6. List problems separately from completed work.
7. End with next actions.
8. Before publishing, rewrite private context into public-safe descriptions.

## Weekly Review Flow

The private workflow also uses a weekly review step:

- scan the current week's notes
- find missing work that was solved but not recorded clearly
- merge duplicate or noisy notes
- remove irrelevant small tool self-repair details
- add follow-up actions when a task needs later checking
- keep local notes synchronized across machines through GitHub

The public repository contains excerpts from that process, not the full private archive.

## Redaction Method

The redaction process keeps the engineering shape and removes the private surface.

| Keep | Remove or generalize |
| --- | --- |
| Task goal | Private names and contact details |
| Technical category | Internal links and environment values |
| Failure stage | Credentials, tokens, cookies, session values |
| Verification result | Raw screenshots, exports, and copied logs |
| Decision and trade-off | Customer records and private account details |
| Next action | Local machine paths and device identifiers |

Good public notes should still be useful after redaction. If removing private details makes a note meaningless, it should stay private.

## What Gets Filtered Out

Not every private note belongs in a public repository. These are filtered out:

- tiny tool self-repair notes that do not explain a real task
- repeated notes with no new decision or result
- private customer details
- raw operational records
- fragments that cannot be made useful without private context
- tasks that are still active or uncertain

## Why This Helps Work

This method reduces repeated explanation. It also makes asynchronous collaboration easier because a teammate or reviewer can inspect the record later and understand:

- the task background
- the route taken
- the observed evidence
- the unresolved risk
- the next concrete step

