<#
    .SYNOPSIS
        This script is used to create a new alert suppression rule in Azure Security Center.
    .DESCRIPTION
        This script is used to create a new alert suppression rule in Azure Security Center.
    .NOTES
        This script is written with Azure PowerShell (Az) module.

        File Name    : New-AlertSuppressionRule.ps1
        Version      : 1.0.0.0
        Author       : AzSec (https://azsec.azurewebsites.net/)
        Prerequisite : Az
        Reference    : https://azsec.azurewebsites.net/?p=1284
    .EXAMPLE 
        .\New-AlertSuppressionRule.p1 -SubscriptionId "XXXX-XXXXX"XXXX `
                                      -RuleName "AzSec_Website_Alert_Suppression" `
                                      -RulePath "./EICAR_Rule.json"
#>

Param(

    [Parameter(Mandatory = $true,
              HelpMessage = "The Subscription ID",
              Position = 0)]
    [ValidateNotNullOrEmpty()]
    [string]
    $SubscriptionId,

    [Parameter(Mandatory = $true,
               HelpMessage = "The unique name of the suppression alert rule",
               Position = 0)]
    [ValidateNotNullOrEmpty()]
    [string]
    $RuleName,

    [Parameter(Mandatory = $true,
               HelpMessage = "The Path of the rule configuration file",
               Position = 0)]
    [ValidateNotNullOrEmpty()]
    [string]
    $RulePath
)


$context = Set-AzContext -SubscriptionId $SubscriptionId
$profile = [Microsoft.Azure.Commands.Common.Authentication.Abstractions.AzureRmProfileProvider]::Instance.Profile
$profileClient = New-Object -TypeName Microsoft.Azure.Commands.ResourceManager.Common.RMProfileClient -ArgumentList ($profile)
$token = $profileClient.AcquireAccessToken($context.Subscription.TenantId)
$authHeader = @{
    'Content-Type'  = 'application/json'
    'Authorization' = 'Bearer ' + $token.AccessToken
}



$uri = "https://management.azure.com/subscriptions/$SubscriptionId/providers/Microsoft.Security/alertsSuppressionRules/$($RuleName)?api-version=2019-01-01-preview"

$rule = Get-Content -Path $RulePath

$response = Invoke-RestMethod -Uri $uri `
                              -Method PUT `
                              -Headers $authHeader `
                              -Body $rule


$response | ConvertTo-Json -Depth 4