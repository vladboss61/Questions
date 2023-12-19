Write-Host "Some Code"

function Test_Func {
    param (
        [string] $Arg
    )
    Write-Host "Test_Func is executed from functions.ps1 file with Arg: ${Arg}"
}