[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateSet('product-management-consultants', 'technical-fluency')]
    [string]$Program,

    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$Name,

    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$Destination
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = [IO.Path]::GetFullPath((Split-Path -Parent $PSScriptRoot))
$template = Join-Path $repoRoot (Join-Path 'course-starters' $Program)
$destinationPath = [IO.Path]::GetFullPath($Destination)
$repoPrefix = $repoRoot.TrimEnd([IO.Path]::DirectorySeparatorChar) + [IO.Path]::DirectorySeparatorChar

if (-not (Test-Path -LiteralPath $template -PathType Container)) {
    throw "Course starter not found: $template"
}

if (Test-Path -LiteralPath $destinationPath) {
    throw "Destination already exists; nothing was changed: $destinationPath"
}

if ($destinationPath.StartsWith($repoPrefix, [StringComparison]::OrdinalIgnoreCase)) {
    throw 'Destination must be outside the canonical ProductLearning repository.'
}

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw 'Git is required but was not found on PATH.'
}

New-Item -ItemType Directory -Path $destinationPath | Out-Null
Get-ChildItem -LiteralPath $template -Force | Copy-Item -Destination $destinationPath -Recurse -Force

$workspaceFile = Join-Path $destinationPath 'WORKSPACE.md'
$workspaceText = Get-Content -LiteralPath $workspaceFile -Raw
$workspaceText = $workspaceText.Replace('{{COURSE_NAME}}', $Name)
Set-Content -LiteralPath $workspaceFile -Value $workspaceText -Encoding utf8NoBOM

& git -C $destinationPath init -b main | Out-Null
if ($LASTEXITCODE -ne 0) {
    throw "Git initialization failed in $destinationPath"
}

$remotes = & git -C $destinationPath remote
if ($LASTEXITCODE -ne 0 -or $remotes) {
    throw 'Safety check failed: the new workspace must not have a configured remote.'
}

Write-Host "Created independent course workspace: $destinationPath"
Write-Host "Program: $Program"
Write-Host 'No Git remote was configured.'
Write-Host ''
Write-Host 'Next steps:'
Write-Host "  git -C `"$destinationPath`" add ."
Write-Host "  git -C `"$destinationPath`" commit -m `"Initialize $Name`""
Write-Host '  Create a new private repository, then add that new repository as origin.'
Write-Host '  Do not use slevine-torq/ProductLearning as the workspace remote.'
