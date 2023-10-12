terraform {
  backend "azurerm" {
     resource_group_name  = "visal-group"
     storage_account_name = "visalstorageok"
     container_name       = "visalok"
     key                  = "terraform01.tfstate"
  }
}
