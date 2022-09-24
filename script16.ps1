$resourceGroup = "exam-grp"
$appName="app-webapp001"
$githubURL="https://github.com/Romeshdg/app-webapp001.git"

$PropertiesObject = @{
    repoUrl = $githubURL;
    branch = "main";
    isManualIntegration = "true";
}

Set-AzResource -Properties $PropertiesObject -ResourceGroupName $resourceGroup `
-ResourceType Microsoft.Web/sites/sourcecontrols -ResourceName $appname/web -ApiVersion 2015-08-01 -Force
