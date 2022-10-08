resource "azurerm_resource_group" "apd_resource_group" {
  name     = "${var.prefix}-apd-resources"
  location = var.location_db
}

resource "azurerm_postgresql_server" "apd_postgresql_server" {
  name                = "${var.prefix}-postgresql-server"
  location            = azurerm_resource_group.apd_resource_group.location
  resource_group_name = azurerm_resource_group.apd_resource_group.name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = var.user_db
  administrator_login_password = var.pssw_db
  version                      = "9.5"
  ssl_enforcement_enabled      = false
}

resource "azurerm_postgresql_firewall_rule" "apd_postgresql_firewall_rule" {
  name                = "allow-all-ip"
  resource_group_name = azurerm_resource_group.apd_resource_group.name
  server_name         = azurerm_postgresql_server.apd_postgresql_server.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}

resource "azurerm_postgresql_database" "apd_postgresql_database" {
  name                = "${var.prefix}-postgresql-db"
  resource_group_name = azurerm_resource_group.apd_resource_group.name
  server_name         = azurerm_postgresql_server.apd_postgresql_server.name
  charset             = "UTF8"
  collation           = var.collation_db
}