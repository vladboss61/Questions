param(
    [Parameter(Mandatory)]
    [string] $ComputerName,

    [Parameter(Mandatory)]
    [int] $SpecialNumber
)

#$emptyObj =   @{} # Empty Object (HashTable)
#$emptyArray = @() # Empty Array


$obj = New-Object -TypeName PSObject -Property @{
    One = $ComputerName
    Other = $SpecialNumber
}

Write-Host $obj
Write-Host $obj.One
Write-Host $obj.Other

Write-Host "Add some new properties." -ForegroundColor Green

$ages = 22, 23, 24, 25

$obj | Add-Member -MemberType NoteProperty -Name Host -Value "Localhost"
$obj | Add-Member -MemberType NoteProperty -Name Something -Value 999999
$obj | Add-Member -MemberType NoteProperty -Name Numbers -Value 10, 20, 30
$obj | Add-Member -MemberType NoteProperty -Name Ages -Value $ages

Write-Host "======================================" -ForegroundColor Green

Write-Host $obj.Host
Write-Host $obj.Something
Write-Host $obj.Numbers
Write-Host $obj.Ages

$Path = "D:\HowTo"
$Directory = Get-Acl -Path $Path

#using List
$dirPermissions = [System.Collections.Generic.List[System.Object]]::new()

ForEach ($Dir in $Directory.Access){

    $dirPermission = New-Object -TypeName PSObject -Property @{

    'Path' = $Path
    'Owner' = $Directory.Owner
    'Group' = $Dir.IdentityReference
    'AccessType' = $Dir.AccessControlType
    'Rights' = $Dir.FileSystemRights
    }

    Write-Host $dirPermission -ForegroundColor Green
    $dirPermissions.Add($dirPermission) #add element to list in pwsh
}

Write-Host "DirPermissions.Count: $($dirPermissions.Count)" -ForegroundColor Green

#using array
$dirPermissionsArray = @() #empty array

ForEach ($Dir in $Directory.Access){

    $dirPermission = New-Object -TypeName PSObject -Property @{

    'Path' = $Path
    'Owner' = $Directory.Owner
    'Group' = $Dir.IdentityReference
    'AccessType' = $Dir.AccessControlType
    'Rights' = $Dir.FileSystemRights
    }

    Write-Host $dirPermission -ForegroundColor Green
    $dirPermissionsArray += $dirPermission # add element to array in pwsh
}

Write-Host "DirPermissionsArray.Length: $($dirPermissionsArray.Length)" -ForegroundColor Green

#Maps array of procs to array of objects with ProcessName, DayOfWeek, Year properties.
$processes = Get-Process | Select-Object -Property @{
    Name = 'ProcessName';
    Expression = {$_.ProcessName}
}, @{
    Name = 'DayOfWeek';
    Expression = {$_.StartTime.DayOfWeek}
}, @{
    Name = 'Year';
    Expression = {$_.StartTime.Year}
}

Write-Host "==========================================" -ForegroundColor Green

$processes | ForEach-Object($_) {
    Write-Host $_.ProcessName
}

$processes | ForEach-Object($_) {
    Write-Host $_
}

$array = 10, 20, 30

$newArray = $array | Select-Object -Property @{
    Name = 'X';
    Expression = {$_}
}, @{
    Name = 'X-X';
    Expression = {$_ * $_}
}

Write-Host "========================" -ForegroundColor Green
Write-Host $newArray -ForegroundColor Green
Write-Host "========================" -ForegroundColor Green

$json = $newArray | ConvertTo-Json
$from = $json | ConvertFrom-Json

Write-Host $json.GetType() #string
$from.GetType() | Out-Null #Object[],  Out-Null hides output and does not display it's to console (and does not send it's to pipeline)

$json| Out-File -FilePath "./newArray.txt"

$emptyObj = @{} # Empty Object
$emptyObj | Add-Member NoteProperty -Name "Name-1" -Value "Value--1" # Add property to object
$emptyObj | Add-Member NoteProperty -Name "Name_1" -Value "Value__1" # Add property to object
Write-Host $emptyObj."Name-1" -ForegroundColor Green
Write-Host $emptyObj.Name_1 -ForegroundColor Green

$emptyArray = @() # empty array

$emptyArray += 10 #Add to array
$emptyArray += 20
$emptyArray += "Vlad"

$emptyArray |ForEach-Object($_) { 
    Write-Host $_ -ForegroundColor Green
}