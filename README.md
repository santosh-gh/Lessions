# Creating a Storage Account

# PowerShell

$resourceGroup = "<resource-group>"
$location = "<location>"
New-AzResourceGroup -Name $resourceGroup -Location $location



New-AzStorageAccount -ResourceGroupName $resourceGroup `
  -Name <account-name> `
  -Location $location `
  -SkuName Standard_RAGRS `
  -Kind StorageV2 `
  -AllowBlobPublicAccess $false

Remove-AzStorageAccount -Name <storage-account> -ResourceGroupName <resource-group>

# CLI

# Create Resource Group
az group create -n tfstates -l eastus2

# Create Storage Account
az storage account create -n kstfstateaccount -g tfstates -l eastus2 --sku Standard_LRS

# Create Storage Account Container
az storage container create -n tfstate --account-name kstfstateaccount

https://medium.com/medialesson/using-azure-devops-pipeline-variables-in-powershell-script-files-11a1670c03fc


https://medium.com/@williamwarley/a-complete-guide-to-azure-devops-pipelines-with-yaml-templates-636cbebc52eb