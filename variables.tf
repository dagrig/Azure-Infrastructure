// variables.tf
variable "app_service_name" {
  description = "Name of the Azure App Service"
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the Azure App Service Plan"
  type        = string
}

variable "sql_server_name" {
  description = "Name of the Azure SQL Server"
  type        = string
}

variable "sql_database_name" {
  description = "Name of the Azure SQL Database"
  type        = string
}

variable "sql_admin_username" {
  description = "Username for the Azure SQL Server admin"
  type        = string
}

variable "sql_admin_password" {
  description = "Password for the Azure SQL Server admin"
  type        = string
  sensitive   = true
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
  default     = "eastus"
}