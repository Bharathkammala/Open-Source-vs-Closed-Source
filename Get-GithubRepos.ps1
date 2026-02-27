$token = "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"

$headers = @{
    Authorization = "Bearer $token"
    "User-Agent"  = "PowerShell"
    Accept        = "application/vnd.github+json"
}

#Invoke-RestMethod -Uri "https://api.github.com/users/Bharathkammala/repos" | ForEach-Object { $_.name }    returns all public repositories of a user

# $url = "https://api.github.com/user/repos"     # Get all accessed repositories of authenticated user's 

$url = "https://api.github.com/repos/Bharathkammala/Private-Api-Test"  # Get a specific repositories of a user 
$response = Invoke-RestMethod -Uri $url -Headers $headers -Method Get

$response | Select-Object name, private, html_url