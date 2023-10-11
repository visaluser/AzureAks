terraform {
  backend "azurerm" {
    resource_group_name  = "visal-resource-group"
    storage_account_name = "visalstorage"
    container_name       = "visalreg"
    key                  = "terraform.tfstate"
  }
}
##############
