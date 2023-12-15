
# A brief description of what this project does and who it's for

GraphAPI-Grant-ServicePrincipal-Permissions-Script
Description:

This GitHub repository contains a PowerShell script designed to grant specific permissions to the service principal associated with a Logic App. The granted permissions enable seamless access to the Microsoft Graph, enhancing the Logic App's effectiveness in interacting with the Graph API.
Instructions:

- Install the AzureAD PowerShell module:

````powershell
    Install-Module AzureAD
````

- Obtain the ObjectID of the service principal associated with your Logic App.

- Connect to Azure AD using Connect-AzureAD.

- Retrieve the necessary information about the Microsoft Graph service principal.

- Grant the required permissions using the provided PowerShell script.

Important Note:

While the list of permissions is available for review in Enterprise Applications in Entra ID, this script offers a streamlined approach. It leverages PowerShell to programmatically grant specific permissions, simplifying the process for enhanced efficiency.