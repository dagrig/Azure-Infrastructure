// main.tf
provider "azurerm" {
  features {}
}

module "app_service" {
  source = "./modules/app_service"

  app_service_name = var.app_service_name
  app_service_plan_name = var.app_service_plan_name
  location = var.location
}

module "sql_database" {
  source = "./modules/sql_database"

  sql_server_name = var.sql_server_name
  sql_database_name = var.sql_database_name
  location = var.location
  admin_username = var.sql_admin_username
  admin_password = var.sql_admin_password
}

module "storage_account" {
  source = "./modules/storage_account"

  storage_account_name = var.storage_account_name
  location = var.location
}