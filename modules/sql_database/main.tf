// modules/sql_database/main.tf
resource "azurerm_sql_server" "main" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.main.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

resource "azurerm_sql_database" "main" {
  name                = var.sql_database_name
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  server_name         = azurerm_sql_server.main.name
}

resource "azurerm_resource_group" "main" {
  name     = "my-resource-group"
  location = var.location
}