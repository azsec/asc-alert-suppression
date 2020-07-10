<#
    .SYNOPSIS
        This script is used to list all specific alert suppression rule in Azure Security Center.
    .DESCRIPTION
        This script is used to list all specific alert suppression rule in Azure Security Center.
    .NOTES
        This script is written with Azure PowerShell (Az) module.

        File Name    : List-AlertSuppressionRules.ps1
        Version      : 1.0.0.0
        Author       : AzSec (https://azsec.azurewebsites.net/)
        Prerequisite : Az
        Reference    : AzSec (https://azsec.azurewebsites.net/)
    .EXAMPLE 
        .\List-AlertSuppressionRules.p1 -SubscriptionId "XXXX-XXXXX"XXXX `

#>

Param(

    [Parameter(Mandatory = $true,
              HelpMessage = "The Subscription ID",
              Position = 0)]
    [ValidateNotNullOrEmpty()]
    [string]
    $SubscriptionId
)


$context = Set-AzContext -SubscriptionId $SubscriptionId
$profile = [Microsoft.Azure.Commands.Common.Authentication.Abstractions.AzureRmProfileProvider]::Instance.Profile
$profileClient = New-Object -TypeName Microsoft.Azure.Commands.ResourceManager.Common.RMProfileClient -ArgumentList ($profile)
$token = $profileClient.AcquireAccessToken($context.Subscription.TenantId)
$authHeader = @{
    'Content-Type'  = 'application/json'
    'Authorization' = 'Bearer ' + $token.AccessToken
}



$uri = "https://management.azure.com/subscriptions/$SubscriptionId/providers/Microsoft.Security/alertsSuppressionRules?api-version=2019-01-01-preview"

$response = Invoke-RestMethod -Uri $uri `
                              -Method Get `
                              -Headers $authHeader

$response | ConvertTo-Json -Depth 6