$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$skillsRoot = Join-Path $repoRoot "skills"
$requiredSkills = @("spec", "ship")

foreach ($skill in $requiredSkills) {
    $skillDir = Join-Path $skillsRoot $skill
    $skillFile = Join-Path $skillDir "SKILL.md"
    $agentFile = Join-Path $skillDir "agents\openai.yaml"

    if (-not (Test-Path -LiteralPath $skillFile)) {
        throw "Missing $skillFile"
    }

    if (-not (Test-Path -LiteralPath $agentFile)) {
        throw "Missing $agentFile"
    }

    $content = Get-Content -LiteralPath $skillFile -Raw
    if ($content -notmatch "(?ms)^---\s*.*?name:\s*$skill\s*.*?description:\s*.+?---") {
        throw "Invalid or missing frontmatter for $skill"
    }

    Write-Host "OK: $skill"
}

Write-Host "Layout validation passed."

