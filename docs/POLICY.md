# Public Worklog Policy

This policy defines what can be shared in this public repository.

## Purpose

The worklog format should make engineering work easier to review without exposing private context. A good public log explains the method, not the sensitive details behind a private project.

## Allowed

- High-level project goals.
- Public repository names and public URLs.
- Generic descriptions of systems, workflows, and checks.
- Commands that do not include secrets, private paths, tokens, or internal domains.
- Synthetic examples.
- Verification summaries.
- Accessibility observations that do not identify a private user, customer, employer, or partner.

## Not Allowed

- Passwords, API keys, tokens, cookies, session IDs, private keys, or bearer values.
- Customer names, QQ numbers, phone numbers, emails, payment details, account IDs, or private support data.
- Full internal URLs, server IPs, device names, local usernames, private file paths, or cloud provider identifiers.
- Employer, client, supplier, school, or partner details that are not already approved for public sharing.
- Raw logs, screenshots, exports, databases, or network captures from a private system.
- Job application details, compensation details, private interview notes, or recruiter contact information.

## Redaction Style

Use stable, boring replacements:

```text
[private server]
[internal admin page]
[customer record]
[local path removed]
[token removed]
```

Do not invent fake secrets that look real. Synthetic examples should be obvious examples.

## Review Checklist

Before publishing a note:

- [ ] The note uses public or synthetic project names.
- [ ] Commands do not contain secrets or private paths.
- [ ] URLs are either public docs or replaced with `[internal URL removed]`.
- [ ] Screenshots and raw logs are not included.
- [ ] Customer and personal identifiers are removed.
- [ ] The public checker passes.

## Why This Matters

Text-first collaboration is most useful when the text can travel safely. If a log mixes useful engineering context with private data, it becomes hard to forward, archive, or review. The safest public log is one that keeps the reasoning and removes the private surface.
