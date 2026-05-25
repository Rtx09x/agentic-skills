param(
    [string]$Destination
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$source = Join-Path $repoRoot "skills"

if (-not (Test-Path -LiteralPath $source)) {
    throw "Could not find skills directory at $source"
}

if (-not $Destination) {
    if ($env:CODEX_HOME) {
        $Destination = Join-Path $env:CODEX_HOME "skills"
    } else {
        $Destination = Join-Path $HOME ".codex\skills"
    }
}

New-Item -ItemType Directory -Force -Path $Destination | Out-Null

foreach ($skill in @("spec", "ship")) {
    $skillSource = Join-Path $source $skill
    $skillDest = Join-Path $Destination $skill

    if (-not (Test-Path -LiteralPath $skillSource)) {
        throw "Missing skill source: $skillSource"
    }

    if (Test-Path -LiteralPath $skillDest) {
        Remove-Item -LiteralPath $skillDest -Recurse -Force
    }

    Copy-Item -LiteralPath $skillSource -Destination $skillDest -Recurse
    Write-Host "Installed $skill -> $skillDest"
}

Write-Host "Done. Restart Codex if the skills do not appear immediately."

