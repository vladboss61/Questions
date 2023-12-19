. (Join-Path $PSScriptRoot functions.ps1) # import other functions from scripts and run them.

$ErrorActionPreference = 'Stop' # Stop execution of script if something wrong...

Write-Host "===========================" -ForegroundColor Green

Test_Func -Arg "Example-1"

Write-Host "===========================" -ForegroundColor Green

Test_Func -Arg "Example-1"

Write-Host "===========================" -ForegroundColor Green