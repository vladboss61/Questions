[string[]]$strings = "first", "second", "third"

# =====================================================================================

foreach ($str in $strings) {
    Write-Host "Loop: $str"
}

$strings | ForEach-Object($_) {
    Write-Host "ForEach-Object: $_" -ForegroundColor Green
}

$new = $strings | Select-Object -First 2
Write-Host $new

# Create a calculated property called $_.StartTime.DayOfWeek
# =====================================================================================

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

# =====================================================================================

enum YesNo {
    Yes = 0
    No  = 2
}

$yes = [YesNo].GetEnumName(0)
$no = [YesNo].GetEnumName(2)

Write-Host "[YesNo]::Yes -> $([YesNo]::Yes)"
Write-Host "[YesNo]::No -> $([YesNo]::No)"
Write-Host "[YesNo]::No GetType() -> $([YesNo]::No.GetType())" -ForegroundColor Green
Write-Host "[YesNo]::No.ToString() -> $([YesNo]::No.ToString())"
Write-Host "[YesNo]::No.ToString().GetType() -> $([YesNo]::No.ToString().GetType())"

Write-Host $yes
Write-Host $no

enum Direction {
    Up = 0
    Down = 1
    Left = 2
    Right = 3
}

Write-Host "Enum Direction:" -ForegroundColor Green

switch ([Direction]::Up) {
    ([Direction]::Up) {
        Write-Host "-- Up"
    }
    ([Direction]::Down) {
        Write-Host "-- Down"
    }
    ([Direction]::Left) {
        Write-Host "-- Left"
    }
    ([Direction]::Right) {
        Write-Host "-- Right"
    }
    default {
        Write-Host "-- ??"
    }
}

switch ([Direction]::Down) {
    "Up" {
        Write-Host "-- Up" -ForegroundColor Green
    }
    "Down" {
        Write-Host "-- Down" -ForegroundColor Green
    }
    "Left" {
        Write-Host "-- Left" -ForegroundColor Green
    }
    "Rigth" {
        Write-Host "-- Right" -ForegroundColor Green
    }
    default {
        Write-Host "-- ??" -ForegroundColor Green
    }
}

switch ([Direction]::Down.ToString()) {
    "Up" {
        Write-Host "-- Up"
    }
    "Down" {
        Write-Host "-- Down"
    }
    "Left" {
        Write-Host "-- Left"
    }
    "Rigth" {
        Write-Host "-- Right"
    }
    default {
        Write-Host "-- ??"
    }
}