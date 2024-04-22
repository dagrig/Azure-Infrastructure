// modules/sql_database/variables.tf
variable "sql_server_name" {
  description = "Name of the Azure SQL Server"
  type        = string
}

variable "sql_database_name" {
  description = "Name of the Azure SQL Database"
  type        = string
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
}

variable "admin_username" {
  description = "Username for the Azure SQL Server admin"
  type        = string
}

variable "admin_password" {
  description = "Password for the Azure SQL Server admin"
  type        = string
  sensitive   = true
}