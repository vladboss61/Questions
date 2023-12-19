
Write-Host "PSScriptRoot"
Write-Host $PSScriptRoot
Write-Host "Get-Location Var 1" -ForegroundColor Green
$var = Get-Location
Write-Host $var
Set-Location "$var\.."
$var2 = Get-Location
Write-Host "Get-Location Var 2" -ForegroundColor Green
Write-Host $var2
Write-Host "PSScriptRoot 2" -ForegroundColor Green
Write-Host $PSScriptRoot

# $? = True if last operation is good false if not.
if($?) {
    Write-Host "$? -> Special var to signal fine execution."
}

git status
Write-Host "$? -> - Execution" -ForegroundColor Green
if($?) {
    Write-Host "Special var to signal fine execution."
}

git status
Write-Host "git.exe LASTEXITCODE - $LASTEXITCODE"
# $LASTEXITCODE = 0 if last TOOL's operation is good false if not.
if($LASTEXITCODE -eq 0) { # 0 code is good, others are not ...-1 - 1..100..
    Write-Host "git.exe -> LASTEXITCODE - Special var to signal fine execution by last tool." -ForegroundColor Green
}

where.exe git.exe
Write-Host "where.exe LASTEXITCODE - $LASTEXITCODE"
if($LASTEXITCODE -eq 0) { # 0 code is good, others are not ...-1 - 1..100..
    Write-Host "where.exe -> LASTEXITCODE - Special var to signal fine execution by last tool." -ForegroundColor Green
}