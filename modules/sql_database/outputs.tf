// modules/sql_database/outputs.tf
output "sql_server_fqdn" {
  value = azurerm_sql_server.main.fully_qualified_domain_name
}