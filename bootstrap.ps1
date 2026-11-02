# Bootstrap v0.3.0 — no downloads, no elevated privileges
# Run from the cloned vault root: powershell -ExecutionPolicy Bypass -File .\bootstrap.ps1
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$theme = Join-Path $root '.obsidian\themes\Conversation OpenAI Bootstrap\theme.css'
$plugin = Join-Path $root '.obsidian\plugins\local-agent-chatview\main.js'
$manifest = Join-Path $root '.obsidian\plugins\local-agent-chatview\manifest.json'
$appearance = Join-Path $root '.obsidian\appearance.json'
$community = Join-Path $root '.obsidian\community-plugins.json'
foreach ($file in @($theme,$plugin,$manifest,$appearance,$community)) {
  if (!(Test-Path -LiteralPath $file)) { throw "Missing required file: $file" }
}
$cfg = Get-Content -Raw -LiteralPath $appearance | ConvertFrom-Json
$plugins = Get-Content -Raw -LiteralPath $community | ConvertFrom-Json
$pm = Get-Content -Raw -LiteralPath $manifest | ConvertFrom-Json
if ($cfg.cssTheme -ne 'Conversation OpenAI Bootstrap') { throw 'Theme configuration mismatch' }
if (@($plugins) -notcontains $pm.id) { throw 'Plugin activation mismatch' }
Write-Host 'Bootstrap checks PASS. Open this folder as a vault in Obsidian.'
Write-Host 'Obsidian may require you to explicitly trust community plugins.'
Write-Host 'No files were overwritten, no permissions were changed.'
