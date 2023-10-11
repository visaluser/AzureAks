terraform {
  required_providers {
    azurerm   = {
      source  = "hashicorp/azurerm"
      version = "=3.64.0"
    }
  }
}
provider "azurerm" {
    skip_provider_registration = true
    features {}
}
resource "azurerm_resource_group" "k8s" {
  name     = var.resourcename
  location = var.location
}
resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.clustername
  location            = azurerm_resource_group.k8s.location
  resource_group_name = azurerm_resource_group.k8s.name
  dns_prefix          = var.dnspreffix
  private_cluster_enabled =  false
default_node_pool {
    name            = "default"
    node_count      = var.agentnode
    vm_size         = var.size
    vnet_subnet_id  = azurerm_subnet.example.id
  }
service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
network_profile {
    network_plugin      = "azure"
    load_balancer_sku   = "standard"
    service_cidr        = "10.0.32.0/24"
    pod_cidr            = "10.0.16.0/24"
    dns_service_ip      = "10.0.32.10"
    network_plugin_mode = "overlay"
  }  
}
