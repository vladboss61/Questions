param(
    [Parameter(Mandatory)]
    [string] $ComputerName,

    [Parameter(Mandatory)]
    [int] $SpecialNumber
)

Write-Output "Write-Output: ComputerName: $ComputerName - SpecialNumber: $SpecialNumber"
Write-Verbose -Message "Write-Verbose: ComputerName: $ComputerName - SpecialNumber: $SpecialNumber"
Write-Error -Message "Write-Error: ComputerName: $ComputerName - SpecialNumber: $SpecialNumber"

function Test-ValueFromPipelineByPropertyName {
    param(
        [Parameter(Mandatory, ValueFromPipelineByPropertyName)]
        [string[]]
        $ComputerName
    )
    Write-Output -InputObject "Saw that ComputerName was '$ComputerName'" -ForegroundColor Green
  }

Test-ValueFromPipelineByPropertyName -ComputerName "Other Computer"
Test-ValueFromPipelineByPropertyName -ComputerName "Other Computer"

for ([int]$i = 0; $i -lt 10; ++$i) {
    Test-ValueFromPipelineByPropertyName -ComputerName "Other Computer"
}