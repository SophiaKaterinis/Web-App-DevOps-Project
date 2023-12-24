terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.85.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

module "networking" {
  source = "./networking-module"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_address_space  = var.vnet_address_space
  subscription_id     = var.subscription_id
  tenant_id           = var.tenant_id
  client_id           = var.client_id
  client_secret       = var.client_secret
}

module "aks_cluster" {
  source = "./aks-cluster-module"

  aks_cluster_name                = var.aks_cluster_name
  cluster_location                = var.location
  dns_prefix                      = var.dns_prefix
  kubernetes_version              = var.kubernetes_version  
  service_principal_client_id     = var.client_id
  service_principal_client_secret = var.client_secret

  resource_group_name         = module.networking.networking_resource_group_name
  vnet_id                     = module.networking.vnet_id
  control_plane_subnet_id     = module.networking.control_plane_subnet_id
  worker_node_subnet_id       = module.networking.worker_node_subnet_id
  aks_nsg_id                  = module.networking.aks_nsg_id

}