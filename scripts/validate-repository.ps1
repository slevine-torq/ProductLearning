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
    'CLIENT-AI-GUIDE.md',
    'CONNECT-CODEX.md',
    'CURRICULUM-AUDIT.md',
    'SOURCE-USE.md',
    'IMPORT-INVENTORY.md',
    'PICK-UP-HERE.md',
    'STARTER-PROMPTS.md',
    'TORQ-LEARNING-STRUCTURE.md',
    'WORKSPACE-QUICKSTART.md',
    'scripts\new-product-workspace.ps1',
    'scripts\new-product-workspace.sh',
    'source-library\STATUS.md',
    'prompt-library\README.md',
    'programs\product-management-for-consultants\README.md',
    'programs\product-management-for-consultants\BUILD-HANDOFF.md',
    'programs\technical-fluency\README.md',
    'programs\technical-fluency\BUILD-HANDOFF.md',
    'course-starters\product-management-consultants\AGENTS.md',
    'course-starters\technical-fluency\AGENTS.md',
    'workspace-starters\README.md',
    'workspace-starters\product-work\README.md',
    'workspace-starters\product-work\AGENTS.md',
    'workspace-starters\product-work\CLAUDE.md',
    'workspace-starters\product-work\AI-WORKFLOW.md',
    'workspace-starters\product-work\WORKSPACE.md',
    'workspace-starters\product-work\product-context.md',
    'workspace-starters\product-work\strategy.md',
    'workspace-starters\product-work\stakeholders.md',
    'workspace-starters\product-work\evidence-index.md',
    'workspace-starters\product-work\decisions.md',
    'workspace-starters\product-work\change-log.md',
    'workspace-starters\product-work\workflows\README.md',
    'workspace-starters\product-work\.github\copilot-instructions.md',
    'workspace-starters\product-work\.gitignore',
    '.github\CODEOWNERS'
)

foreach ($required in $requiredFiles) {
    if (-not (Test-Path -LiteralPath (Join-Path $repoRoot $required) -PathType Leaf)) {
        Add-ValidationError "Missing required file: $required"
    }
}

$navigationFiles = Get-ChildItem -LiteralPath $repoRoot -Recurse -Force -File -Filter '*.md' | Where-Object {
    (-not $_.FullName.StartsWith((Join-Path $repoRoot 'source-library') + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase) -or
     $_.FullName -ieq (Join-Path $repoRoot 'source-library\README.md') -or
     $_.FullName -ieq (Join-Path $repoRoot 'source-library\STATUS.md')) -and
    -not $_.FullName.StartsWith((Join-Path $repoRoot '.git') + [IO.Path]::DirectorySeparatorChar, [StringComparison]::OrdinalIgnoreCase)
} | Select-Object -ExpandProperty FullName

$linkPattern = [regex]'\[[^\]]+\]\((?:<([^>]+)>|([^)]+))\)'
foreach ($document in $navigationFiles) {
    $text = Get-Content -LiteralPath $document -Raw
    foreach ($match in $linkPattern.Matches($text)) {
        $target = if ($match.Groups[1].Success) { $match.Groups[1].Value } else { $match.Groups[2].Value }
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

$productPracticeBuild = Join-Path $repoRoot 'source-library\imports\torq-lessons-build\Torq Lessons Build\Torq Rebuild\Build'
$productPracticeTasks = @(Get-ChildItem -LiteralPath $productPracticeBuild -Recurse -File -Filter '*.html')
if ($productPracticeTasks.Count -ne 37) {
    Add-ValidationError "Expected 37 built Product Practice HTML tasks; found $($productPracticeTasks.Count)."
}

$technicalFluencyBuild = Join-Path $repoRoot 'source-library\imports\technical-fluency-build\Technical Fluency Build\Build'
$technicalFluencyTasks = @(Get-ChildItem -LiteralPath $technicalFluencyBuild -Recurse -File -Filter '*.html')
if ($technicalFluencyTasks.Count -ne 15) {
    Add-ValidationError "Expected 15 built Technical Fluency HTML tasks; found $($technicalFluencyTasks.Count)."
}

$auditText = Get-Content -LiteralPath (Join-Path $repoRoot 'CURRICULUM-AUDIT.md') -Raw
$requiredAuditStatements = @(
    '37 built HTML tasks',
    '15 built / 24 planned',
    'Assist / Copilot / Agent',
    'Prompt → Model → Data → Architecture',
    '2–3 minutes per learner',
    'Parts 5–8',
    'REST and CRUD'
)
foreach ($statement in $requiredAuditStatements) {
    if (-not $auditText.Contains($statement)) {
        Add-ValidationError "Curriculum audit is missing required resolution: $statement"
    }
}

$promptLibraryPath = Join-Path $repoRoot 'prompt-library'
$promptFiles = @(Get-ChildItem -LiteralPath $promptLibraryPath -File)
if ($promptFiles.Count -ne 1 -or $promptFiles[0].Name -ne 'README.md') {
    Add-ValidationError 'Prompt library must contain only the Torq-authored README.md workflow guide.'
}

$promptGuide = Get-Content -LiteralPath (Join-Path $promptLibraryPath 'README.md') -Raw
foreach ($statement in @('Torq-authored', 'restricted builder reference', 'do not extract')) {
    if (-not $promptGuide.Contains($statement)) {
        Add-ValidationError "Torq prompt guide is missing source-boundary statement: $statement"
    }
}
foreach ($sourceSpecificText in @('HabitRPG', 'Verbatim capture', 'Streakly')) {
    if ($promptGuide.Contains($sourceSpecificText)) {
        Add-ValidationError "Torq prompt guide contains source-specific material: $sourceSpecificText"
    }
}

$productProgramGuide = Get-Content -LiteralPath (Join-Path $repoRoot 'programs\product-management-for-consultants\README.md') -Raw
foreach ($statement in @('restricted builder references', 'Reference only; do not assign as Torq curriculum', 'Planned Torq coverage—not yet assigned')) {
    if (-not $productProgramGuide.Contains($statement)) {
        Add-ValidationError "Product program guide is missing learner/reference boundary: $statement"
    }
}

$clientGuide = Get-Content -LiteralPath (Join-Path $repoRoot 'CLIENT-AI-GUIDE.md') -Raw
foreach ($statement in @('client outcome', 'Claude Code, Codex, Kiro, Cursor', 'Learn:', 'Apply:', 'Build:', 'Lead:', 'restricted builder reference')) {
    if (-not $clientGuide.Contains($statement)) {
        Add-ValidationError "Client AI guide is missing required guidance: $statement"
    }
}

$starterPrompts = Get-Content -LiteralPath (Join-Path $repoRoot 'STARTER-PROMPTS.md') -Raw
foreach ($statement in @('## Learn', '## Apply', '## Lead', '## Build', 'approved AI tool', 'restricted builder reference')) {
    if (-not $starterPrompts.Contains($statement)) {
        Add-ValidationError "Starter prompt catalog is missing required guidance: $statement"
    }
}

$workspaceQuickstart = Get-Content -LiteralPath (Join-Path $repoRoot 'WORKSPACE-QUICKSTART.md') -Raw
foreach ($statement in @('product-context.md', 'evidence-index.md', 'decisions.md', 'change-log.md', 'configures no remote', 'refuses to overwrite')) {
    if (-not $workspaceQuickstart.Contains($statement)) {
        Add-ValidationError "Workspace quickstart is missing required guidance: $statement"
    }
}

foreach ($scriptPath in @('scripts\new-product-workspace.ps1', 'scripts\new-product-workspace.sh')) {
    $scriptText = Get-Content -LiteralPath (Join-Path $repoRoot $scriptPath) -Raw
    foreach ($statement in @('Destination already exists', 'outside the canonical ProductLearning repository', 'No Git remote was configured')) {
        if (-not $scriptText.Contains($statement)) {
            Add-ValidationError "$scriptPath is missing workspace safety behavior: $statement"
        }
    }
}

$productWorkspaceAgent = Get-Content -LiteralPath (Join-Path $repoRoot 'workspace-starters\product-work\AGENTS.md') -Raw
foreach ($statement in @('approved engagement', 'Separate facts, inference, assumptions', 'Never configure or push to `slevine-torq/ProductLearning`')) {
    if (-not $productWorkspaceAgent.Contains($statement)) {
        Add-ValidationError "Product-work AGENTS.md is missing required guidance: $statement"
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Error $_ }
    throw "Repository validation failed with $($errors.Count) error(s)."
}

Write-Host 'Repository validation passed.'
Write-Host "Archive imports: $($expectedImports.Count)"
Write-Host "Retained source files: $($sourceFiles.Count)"
Write-Host "Navigation documents checked: $($navigationFiles.Count)"
Write-Host "Product Practice tasks: $($productPracticeTasks.Count) built"
Write-Host "Technical Fluency tasks: $($technicalFluencyTasks.Count) built / 24 planned"
Write-Host 'Forbidden-file scan: passed'
