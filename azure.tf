locals {
  setup_name = "dev"
}

// Configure the Resource Group
resource "azurerm_resource_group" "main" {
  name     = join("_", [local.setup_name, "main_resource_group"])
  location = var.location
}

// Configure the Storage Account
resource "azurerm_storage_account" "dev" {
  name                     = join("",[local.setup_name, "storage358"])
  resource_group_name      = azurerm_resource_group.main.name

  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }

  network_rules {
    default_action             = "Allow"
    ip_rules                   = ["195.160.234.124"]
  }
}

resource "azurerm_storage_container" "container_tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.dev.name
  container_access_type = "private"
}
