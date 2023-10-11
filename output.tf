output "client_certificate" {
  value = azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate
  sensitive = true
}
output "kube_config" {
  value = azurerm_kubernetes_cluster.k8s.kube_config_raw
  sensitive = true
}
output "fqdn" {
  value = azurerm_kubernetes_cluster.k8s.fqdn
}
output "resourcename" {
  value       = var.resourcename
  description = "The Resource Name of AKS cluster"
}
output "cluster_name" {
  value       = var.clustername
  description = "The name of the AKS cluster"
}
output "vnet_name" {
  value       = var.vnetname
  description = "The vnet name of the AKS cluster"
}

output "command_line_access" {
  value       = "az aks get-credentials --resource-group var.resourcename --name var.clustername"
  description = "Configure kubectl command line access by running the following command"
}
