
$result = Invoke-WebRequest -Method 'GET' -Uri "https://google.com"

Write-Host $result

Write-Host "----------------------------------------"

$curlResult = curl https://google.com -v
Write-Host $curlResult[$curlResult.Length - 1]