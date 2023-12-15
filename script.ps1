# replace Managed-Identity/service Principal Object Id
$ObjectID = "<guid>"

# Connect to Azure AD
Connect-AzureAD

# Get Azure AD service principal for Microsoft Graph
$graph = Get-AzureADServicePrincipal -Filter "AppId eq '00000003-0000-0000-c000-000000000000'"

# Granting Directory.ReadWrite.All permissions
$tempAccessPassWriteAll = $graph.AppRoles | ? Value -eq "Directory.ReadWrite.All"
New-AzureADServiceAppRoleAssignment -Id $tempAccessPassWriteAll.Id -PrincipalId $ObjectId -ResourceId $graph.ObjectId -ObjectID $ObjectID

# Granting UserAuthenticationMethod.ReadWrite.All permissions
$tempAccessPassWriteAll = $graph.AppRoles | ? Value -eq "UserAuthenticationMethod.ReadWrite.All"
New-AzureADServiceAppRoleAssignment -Id $tempAccessPassWriteAll.Id -PrincipalId $ObjectId -ResourceId $graph.ObjectId -ObjectID $ObjectID
