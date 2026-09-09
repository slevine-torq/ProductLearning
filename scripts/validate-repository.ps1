[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = [IO.Path]::GetFullPath((Split-Path -Parent $PSScriptRoot))
$errors = [Collections.Generic.List[string]]::new()

function Add-ValidationError([string]$Message) {
    $errors.Add($Message)
}

$expectedImports = @(
    'torq-lessons-build',
    'ai-product-management',
    'technical-fluency-build',
    'product-leadership',
    'claude-code-for-pm',
    'supplemental-library'
)

foreach ($import in $expectedImports) {
    $path = Join-Path $repoRoot (Join-Path 'source-library\imports' $import)
    if (-not (Test-Path -LiteralPath $path -PathType Container)) {
        Add-ValidationError "Missing archive import: $import"
    }
}

$sourceFiles = Get-ChildItem -LiteralPath (Join-Path $repoRoot 'source-library\imports') -Recurse -Force -File
if ($sourceFiles.Count -ne 258) {
    Add-ValidationError "Expected 258 retained source files; found $($sourceFiles.Count)."
}

$forbidden = Get-ChildItem -LiteralPath $repoRoot -Recurse -Force -File | Where-Object {
    $_.Extension -ieq '.pdf' -or
    $_.Name -ieq '.DS_Store' -or
    $_.Name -ieq 'settings.local.json' -or
    $_.Name -like '~$*' -or
    ($_.FullName -like "*$([IO.Path]::DirectorySeparatorChar).git$([IO.Path]::DirectorySeparatorChar)*" -and
     -not $_.FullName.StartsWith((Join-Path $repoRoot '.git') + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase))
}

foreach ($file in $forbidden) {
    Add-ValidationError "Forbidden file present: $($file.FullName.Substring($repoRoot.Length + 1))"
}

$requiredFiles = @(
    'README.md',
    'AGENTS.md',
    'CLAUDE.md',
    'SOURCE-USE.md',
    'IMPORT-INVENTORY.md',
    'PICK-UP-HERE.md',
    'TORQ-LEARNING-STRUCTURE.md',
    'programs\product-management-for-consultants\README.md',
    'programs\product-management-for-consultants\BUILD-HANDOFF.md',
    'programs\technical-fluency\README.md',
    'programs\technical-fluency\BUILD-HANDOFF.md',
    'course-starters\product-management-consultants\AGENTS.md',
    'course-starters\technical-fluency\AGENTS.md',
    '.github\CODEOWNERS'
)

foreach ($required in $requiredFiles) {
    if (-not (Test-Path -LiteralPath (Join-Path $repoRoot $required) -PathType Leaf)) {
        Add-ValidationError "Missing required file: $required"
    }
}

$navigationFiles = Get-ChildItem -LiteralPath $repoRoot -Recurse -Force -File -Filter '*.md' | Where-Object {
    (-not $_.FullName.StartsWith((Join-Path $repoRoot 'source-library') + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase) -or
     $_.FullName -ieq (Join-Path $repoRoot 'source-library\README.md')) -and
    -not $_.FullName.StartsWith((Join-Path $repoRoot '.git') + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase)
} | Select-Object -ExpandProperty FullName

$linkPattern = [regex]'\[[^\]]+\]\((?:<)?([^)>]+)(?:>)?\)'
foreach ($document in $navigationFiles) {
    $text = Get-Content -LiteralPath $document -Raw
    foreach ($match in $linkPattern.Matches($text)) {
        $target = $match.Groups[1].Value
        if ($target -match '^(https?://|mailto:|#)') { continue }
        $pathOnly = ($target -split '#', 2)[0]
        $decoded = [Uri]::UnescapeDataString($pathOnly)
        $resolved = [IO.Path]::GetFullPath((Join-Path (Split-Path -Parent $document) $decoded))
        if (-not (Test-Path -LiteralPath $resolved)) {
            Add-ValidationError "Broken navigation link in $($document.Substring($repoRoot.Length + 1)): $target"
        }
    }
}

$rootReadme = Get-Content -LiteralPath (Join-Path $repoRoot 'README.md') -Raw
if ($rootReadme -notmatch '```mermaid') {
    Add-ValidationError 'Root README does not contain a Mermaid map.'
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Error $_ }
    throw "Repository validation failed with $($errors.Count) error(s)."
}

Write-Host 'Repository validation passed.'
Write-Host "Archive imports: $($expectedImports.Count)"
Write-Host "Retained source files: $($sourceFiles.Count)"
Write-Host "Navigation documents checked: $($navigationFiles.Count)"
Write-Host 'Forbidden-file scan: passed'
