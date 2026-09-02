resource "azurerm_resource_group" "lab" {
  name     = var.resource_group_name
  location = var.location
}


resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_storage_account" "lab" {
  name                     = "tfstorage${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.lab.name
  location                 = azurerm_resource_group.lab.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "lab" {
  name                  = "lab-container"
  storage_account_id    = azurerm_storage_account.lab.id
  container_access_type = "private"
}
