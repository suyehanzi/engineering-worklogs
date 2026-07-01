param(
  [string]$Root = "."
)

$ErrorActionPreference = "Stop"

$rules = @(
  @{
    Name = "secret-or-token"
    Pattern = "(?i)(github_pat_[A-Za-z0-9_]+|gho_[A-Za-z0-9_]+|sk-[A-Za-z0-9]{20,}|AKIA[0-9A-Z]{16}|BEGIN [A-Z ]*PRIVATE KEY|bearer\s+[A-Za-z0-9._-]{12,}|authorization\s*:|api[_ -]?key\s*[:=]|access[_ -]?token\s*[:=]|session[_ -]?secret\s*[:=]|password\s*[:=])"
  },
  @{
    Name = "private-network-or-address"
    Pattern = "(?i)(\b([0-9]{1,3}\.){3}[0-9]{1,3}\b|localhost:\d{2,5}|127\.0\.0\.1:\d{2,5}|internal[-.][A-Za-z0-9.-]+|公网|内网|服务器地址)"
  },
  @{
    Name = "personal-or-customer-identifier"
    Pattern = "(?i)(customer id|account id|phone number|qq\s*[:=]|\bwechat\b|客户姓名|手机号|身份证|订单号|付款记录|账号密码)"
  },
  @{
    Name = "private-path"
    Pattern = "(?i)(/Users/[A-Za-z0-9._-]+/|C:\\Users\\[A-Za-z0-9._-]+\\|/var/folders/|AppData\\|\.ssh/)"
  }
)

$includeExtensions = @(".md", ".txt", ".ps1", ".sh", ".yml", ".yaml")
$skipDirs = @(".git", "node_modules", "artifacts", "archives", ".pw-profile")
$skipFiles = @("README.md", "docs/POLICY.md")
$violations = New-Object System.Collections.Generic.List[string]
$scriptPath = if ($PSCommandPath) { [IO.Path]::GetFullPath($PSCommandPath) } else { $null }

$files = Get-ChildItem -Path $Root -Recurse -File | Where-Object {
  $file = $_
  $fullPath = [IO.Path]::GetFullPath($file.FullName)
  $relativeForSkip = (Resolve-Path -Path $file.FullName -Relative).TrimStart(".", [IO.Path]::DirectorySeparatorChar, [IO.Path]::AltDirectorySeparatorChar)
  $includeExtensions -contains $file.Extension.ToLowerInvariant() -and
  ($null -eq $scriptPath -or $fullPath -ne $scriptPath) -and
  -not ($skipFiles -contains $relativeForSkip.Replace("\", "/")) -and
  -not ($skipDirs | Where-Object { $file.FullName -match [Regex]::Escape([IO.Path]::DirectorySeparatorChar + $_ + [IO.Path]::DirectorySeparatorChar) })
}

foreach ($file in $files) {
  $relativePath = Resolve-Path -Path $file.FullName -Relative
  $lines = Get-Content -LiteralPath $file.FullName

  for ($i = 0; $i -lt $lines.Count; $i++) {
    foreach ($rule in $rules) {
      if ($lines[$i] -match $rule.Pattern) {
        $violations.Add("${relativePath}:$($i + 1): $($rule.Name)")
      }
    }
  }
}

if ($violations.Count -gt 0) {
  Write-Host "Public worklog safety check failed. Review these files and rules:"
  $violations | Sort-Object -Unique | ForEach-Object { Write-Host "  $_" }
  exit 1
}

Write-Host "Public worklog safety check passed."
