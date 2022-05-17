# Remote backend
terraform {
  backend "azurerm" {
    resource_group_name  = "dev_main_resource_group"
    storage_account_name = "devaditionstorage"
    container_name       = "aditiontfstate"
    key                  = "terraform.tfstate"
  }
}