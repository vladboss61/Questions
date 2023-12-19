param ($url)

if($null -eq $url) {
    $url = 'http://rss.slashdot.org/Slashdot/slashdot' # Example
}

$client = New-Object System.Net.WebClient

$contents = $client.DownloadString($url)
Write-Host $contents

$feed = [xml] $contents

Write-Host $feed

function Get-RdfPosts {
    param() {
        $Feed
    }

    Write-Host "Get-RdfPosts" -ForegroundColor Green

    $Feed

    Write-Host "Feed.RDF: $($Feed.RDF)"
    Write-Host "Feed.RDF.item: $($Feed.RDF.item)"

    $array = @();

    $Feed.RDF.item | ForEach-Object($_) {
        Write-Host "============================================" -ForegroundColor Green

        Write-Host "Feed.RDF.item.title: $($_.title)"
        Write-Host "Feed.RDF.item.link: $($_.link)"
        Write-Host "Feed.RDF.item.description: $($_.description)"

        Write-Host "============================================" -ForegroundColor Green

        $array += @{
            "Title" = $_.title
            "Link" = $_.link
            "Body" = $_.description
        }
    }

    Write-Host "Array: $array" -ForegroundColor Green

    $array | ForEach-Object($_) {
        Write-Host "Title: $($_.Title)"
        Write-Host "Link: $($_.Link)"
        Write-Host "Description: $($_.Body)"
    }
    # $feed.RDF.item | ForEach-Object {
    #     @{ "Title" = $_.title; "Body" = $_.description }
    # }
}

Get-RdfPosts -feed $feed