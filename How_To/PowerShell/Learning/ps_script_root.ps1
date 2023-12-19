Write-Host $PSScriptRoot
Write-Host $PSCommandPath

$PSCommandPath.Split("\") | Select-Object -Last 1 | Write-Host

$envs = Get-ChildItem env:

$envs | ForEach-Object($_) {
    Write-Host "$($_.Name) = $($_.Value)" -ForegroundColor Green
}

Write-Host "Specific Env: $Env:PROCESSOR_REVISION"
Write-Host "Specific Env: $Env:ProgramData"