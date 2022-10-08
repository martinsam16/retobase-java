output "login_acr" {
  value = azurerm_container_registry.acr_container_registry.login_server
}

output "user_acr" {
  value = azurerm_container_registry.acr_container_registry.admin_username
}

output "pssw_acr" {
  value = azurerm_container_registry.acr_container_registry.admin_password
  sensitive = true
}