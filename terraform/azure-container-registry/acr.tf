# Grupo de recursos
resource "azurerm_resource_group" "acr_resource_group" {
  name     = "${var.prefix}-acr-resources"
  location = var.location_acr
}

# ACR
resource "azurerm_container_registry" "acr_container_registry" {
  name                = var.prefix
  resource_group_name = azurerm_resource_group.acr_resource_group.name
  location            = azurerm_resource_group.acr_resource_group.location
  sku                 = var.sku
  admin_enabled       = true
  //  georeplication_locations = ["East US", "West Europe"]
}