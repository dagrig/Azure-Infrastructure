// modules/storage_account/variables.tf
variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
}