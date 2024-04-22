// outputs.tf
output "app_service_url" {
  value = module.app_service.app_service_url
}

output "sql_server_fqdn" {
  value = module.sql_database.sql_server_fqdn
}

output "storage_account_name" {
  value = module.storage_account.storage_account_name
}