# Engineering Worklogs

Public, sanitized templates and record excerpts for writing engineering worklogs that are useful for async collaboration, accessibility, and project review.

This repository is not my private daily log archive. It is a safe public version of the method: how I structure notes, what I avoid recording, how I turn real work into shareable excerpts, and how I check that a worklog can be shared without leaking private context.

## Why This Exists

I am Deaf and work best with durable written context. A clear worklog helps me and my teammates keep decisions, evidence, trade-offs, and next actions reviewable after a meeting or coding session ends.

The goal is simple:

- record what changed
- preserve useful evidence
- make handoff easy
- avoid unrecorded assumptions
- keep sensitive data out of public notes

## What This Repository Shows

- A reusable daily worklog template.
- A safety policy for public or forwardable engineering notes.
- Synthetic example logs that show the format without exposing real projects.
- Sanitized real-record excerpts that show cross-device sync, backfill review, and GitHub-based record keeping without exposing private context.
- A PowerShell checker that blocks common secret, credential, URL, IP, and private-context patterns.
- A GitHub Actions workflow that runs the checker on every push and pull request.

## Repository Structure

```text
.
├── README.md
├── TEMPLATE.md
├── docs/
│   ├── POLICY.md
│   └── examples/
│       ├── 2026-05-cross-device-worklog-sync.md
│       ├── 2026-06-multi-machine-backfill-review.md
│       ├── 2026-06-visual-state-triage.md
│       ├── 2026-06-automation-export.md
│       └── 2026-06-text-first-handoff.md
├── scripts/
│   └── check-public-worklogs.ps1
└── .github/
    └── workflows/
        └── check.yml
```

## Safety Boundary

The public format intentionally excludes:

- passwords, tokens, cookies, API keys, private keys, and session values
- customer names, real user records, payment details, or account identifiers
- full internal URLs, server IPs, device names, and private paths
- employer, client, or partner information that has not been approved for public sharing
- screenshots, logs, or exported files copied from a private system

When a detail is useful but private, write the general shape instead:

```text
Bad: refreshed the full internal admin link with the real token value
Good: refreshed the internal admin workflow and verified the visible status update
```

## Suggested Daily Flow

1. Start with the goal.
2. Write a time-ordered timeline.
3. Capture decisions and trade-offs.
4. List changed files or systems at a high level.
5. Add verification evidence that can be repeated.
6. Record blockers without exposing private context.
7. End with next actions.
8. Run the public safety checker before sharing.

## Run The Checker

On macOS or Linux with PowerShell installed:

```powershell
pwsh ./scripts/check-public-worklogs.ps1
```

On Windows PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\check-public-worklogs.ps1
```

The checker reports file paths and rule names only. It avoids printing the matched line so that accidental secrets are not copied into CI logs.

GitHub Actions runs the same checker automatically for pushes and pull requests.

## 中文说明

这是一个脱敏后的公开工作日志方法仓库，不是真实私人日志全集。

它展示的是：

- 我如何记录工程目标、时间线、修改内容和验证结果
- 我如何把上下文写清楚，方便异步协作
- 我如何把真实工作日志整理成可公开的脱敏摘录
- 我如何避免把密码、token、客户信息、内部地址、服务器信息和私人路径写进公开材料
- 我如何用脚本检查日志是否适合公开

对我来说，文字优先不是额外负担，而是一种无障碍协作方式。它让重要决策和证据在沟通结束后仍然可以被复核。

## License

MIT
