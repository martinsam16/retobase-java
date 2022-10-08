terraform {
  required_providers {
    azurerm = {
      version = "~> 2.46.1"
    }
    helm = {
      version = "~> 2.0.2"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "helm" {
  kubernetes {
    host                   = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.host
    username               = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.username
    password               = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.password
    client_certificate     = base64decode(azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_certificate)
    client_key             = base64decode(azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_key)
    cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.aks_cluster.kube_config.0.cluster_ca_certificate)
  }
}