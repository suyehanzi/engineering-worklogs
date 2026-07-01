# Engineering Worklogs

Public, sanitized engineering worklog records and templates for async collaboration, accessibility, and project review.

This repository shows how I turn real work into reviewable written records while removing private context. It is not my full private daily log archive.

## Quick Review

If you are reading this from a resume or interview context, start with these three things:

- [Record index](records/README.md) for the public real-record excerpts.
- [Evidence map](docs/EVIDENCE-MAP.md) for the skills each record demonstrates.
- [Public case studies](docs/CASE-STUDIES.md) for detailed project-style examples.
- [Worklog method](docs/WORKLOG-METHOD.md) for the process I use to turn messy work into reviewable notes.

The repository is written in a public-safe way. It keeps the operating method, decisions, verification style, and follow-up logic, while removing private names, private links, credentials, raw exports, screenshots, and operational identifiers.

## Start Here

The most useful record excerpts are listed first:

- [Record index](records/README.md)
- [2026-04-24 Public release cleanup and admin workflow](records/2026-04-24-public-release-cleanup.md)
- [2026-05-08 AI service routing and account workflow](records/2026-05-08-ai-service-routing-workflow.md)
- [2026-05-11 Cross-device GitHub sync and troubleshooting](records/2026-05-11-cross-device-github-sync.md)
- [2026-05-24 Remote cleanup and automation failure record](records/2026-05-24-remote-cleanup-automation-record.md)
- [2026-06-10 Spreadsheet automation and desktop rebuild](records/2026-06-10-spreadsheet-automation-desktop-rebuild.md)
- [2026-07-01 Document automation and resume delivery](records/2026-07-01-document-automation-resume-delivery.md)

中文说明：这里放的是脱敏后的真实记录摘录。完整私人日志不公开，但这些摘录保留了任务目标、处理过程、验证结果、问题和后续行动，方便招聘方快速判断我的工作方式。

## What A Reviewer Can Judge

This repository is intended to show practical working ability, not only note-taking. The records demonstrate:

- turning vague tasks into goals, steps, evidence, and next actions
- maintaining written context across cloud machines, Windows machines, and Mac devices
- using GitHub as a durable sync and review surface
- checking public safety before publishing any work note
- describing technical troubleshooting without exposing private customer context
- writing handoff material that can be reviewed asynchronously
- using automation where it reduces repeated work, while recording failure stages when automation breaks

## 中文速览

这个仓库适合招聘方快速看三件事：

- 我如何把复杂任务拆成目标、步骤、证据和后续行动
- 我如何在多设备、多系统环境下保持工作记录同步
- 我如何在公开展示和隐私保护之间做安全边界

这里不是完整私人工作日志，也不是客户项目原始材料。它是公开可读版本，保留工作方法和复盘颗粒度，删除敏感信息。

## Why This Exists

I am Deaf and work best with durable written context. A clear worklog helps me and my teammates keep decisions, evidence, trade-offs, and next actions reviewable after a meeting or coding session ends.

The goal is simple:

- record what changed
- preserve useful evidence
- make handoff easy
- avoid unrecorded assumptions
- keep sensitive data out of public notes

## What This Repository Shows

- A visible set of sanitized real-record excerpts.
- A reusable daily worklog template.
- A safety policy for public or forwardable engineering notes.
- Synthetic example logs that show the format without exposing real projects.
- A reviewer-facing evidence map that links records to practical skills.
- Public-safe case studies for browser automation, extension work, support operations, and Apple usability notes.
- A written method for turning rough task history into clean, public-safe logs.
- A PowerShell checker that blocks common secret, credential, URL, IP, and private-context patterns.
- A GitHub Actions workflow that runs the checker on every push and pull request.

## Repository Structure

```text
.
├── README.md
├── TEMPLATE.md
├── records/
│   ├── README.md
│   ├── 2026-04-24-public-release-cleanup.md
│   ├── 2026-05-08-ai-service-routing-workflow.md
│   ├── 2026-05-11-cross-device-github-sync.md
│   ├── 2026-05-24-remote-cleanup-automation-record.md
│   ├── 2026-06-10-spreadsheet-automation-desktop-rebuild.md
│   └── 2026-07-01-document-automation-resume-delivery.md
├── docs/
│   ├── POLICY.md
│   ├── CASE-STUDIES.md
│   ├── EVIDENCE-MAP.md
│   ├── WORKLOG-METHOD.md
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
