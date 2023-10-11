terraform {
  backend "azurerm" {
    resource_group_name  = "DefaultResourceGroup-EUS"
    storage_account_name = "tstateterraform02"
    container_name       = "tfstate-dev"
    key                  = "terraform.tfstate"
  }
}
##############
