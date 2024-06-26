// modules/app_service/variables.tf
variable "app_service_name" {
  description = "Name of the Azure App Service"
  type        = string
}

variable "app_service_plan_name" {
  description = "Name of the Azure App Service Plan"
  type        = string
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
}