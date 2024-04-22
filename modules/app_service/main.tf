// modules/app_service/main.tf
resource "azurerm_app_service_plan" "main" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "main" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = azurerm_app_service_plan.main.id
}

resource "azurerm_resource_group" "main" {
  name     = "my-resource-group"
  location = var.location
}