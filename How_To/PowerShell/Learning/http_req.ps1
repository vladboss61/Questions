param(
    $ULR = 'https://dog.ceo/api/breeds/image/random'
)

$response = Invoke-WebRequest -Uri $ULR -Method 'GET' -Headers @{ "Accept" = "application/json" } #-Body @{ 'hello' = 'world'} #or -Body '{"hello": "world"}' #as string

Write-Host $response.StatusCode
Write-Host "=======================" -ForegroundColor Green
Write-Host $response.Content # Response Body

$responseObj = $response.Content | ConvertFrom-Json
Write-Host "=======================" -ForegroundColor Green

Write-Host $responseObj.message
Write-Host $responseObj.status

Write-Host "=======================" -ForegroundColor Green
Write-Host $response.RawContent # Entire response Content with headers and body 



#$authenticate = Invoke-RestMethod `
#    -Method Post `
#    -Uri "$BlackDuckUrl/api/tokens/authenticate" `
#    -Headers @{ Authorization = "token $BlackDuckApiToken" }

#$authorization = @{ Authorization = "Bearer $($authenticate.BearerToken)" }

#$projects = Invoke-RestMethod `
#    -Method Get `
#    -Uri "$BlackDuckUrl/api/projects?q=name:$projectName" `
#    -Headers $authorization
#$projectUrl = ($projects.Items | Where-Object Name -eq $projectName)._Meta.Href
