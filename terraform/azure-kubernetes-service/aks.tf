# Grupo de recursos
resource "azurerm_resource_group" "aks_resource_group" {
  name     = "${var.prefix}-aks-resources"
  location = var.location_aks
}

# Clustern AKS
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "${var.prefix}-aks"
  location            = azurerm_resource_group.aks_resource_group.location
  resource_group_name = azurerm_resource_group.aks_resource_group.name
  dns_prefix          = "${var.prefix}-aks"

  default_node_pool {
    name            = "default"
    node_count      = var.numero_nodos
    vm_size         = var.vm_size_aks
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

#  addon_profile {
#    aci_connector_linux {
#      enabled = false
#    }
#
#    azure_policy {
#      enabled = false
#    }
#
#    http_application_routing {
#      enabled = true
#    }
#
#    kube_dashboard {
#      enabled = true
#    }
#
#    oms_agent {
#      enabled = false
#    }
#  }
}