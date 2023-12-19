# Read raw data, entirely read all file and safe as string
$content = Get-Content -Path "./newArray.txt" -Raw

Write-Host "Content GetType: $($content.GetType())" -ForegroundColor Green
Write-Host "Content: $content"

$json = $content | ConvertFrom-Json
$json | ForEach-Object($_) {
    Write-Host $_.X
    Write-Host $_."X-X" -ForegroundColor Green
}

# Single Line.
# $content | ConvertFrom-Json | ForEach-Object($_) {
#     Write-Host $_.X
#     Write-Host $_."X-X"
# }

# Read data by rows and save as array of row
$content = Get-Content -Path "./newArray.txt"
Write-Host "Content.Length: $($content.Length)" -ForegroundColor Green