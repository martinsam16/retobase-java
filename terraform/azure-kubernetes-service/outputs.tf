# AKS Cluster
output "id" {
  value = azurerm_kubernetes_cluster.aks_cluster.id
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
  sensitive = true
}

output "client_key" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_key
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_certificate
}

output "cluster_ca_certificate" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.cluster_ca_certificate
}

output "host" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.host
}

output "username" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.username
}

output "password" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.password
  sensitive = true
}