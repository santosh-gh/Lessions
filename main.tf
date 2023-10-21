terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "example-rg"
    storage_account_name = "teststg89"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
} 

provider "azurerm" {
  features {}
}

# Define any Azure resources to be created here. A simple resource group is shown here as a minimal example.
resource "azurerm_resource_group" "rg" {
  name     = "resource_group_name"
  location = "UK South"
}
