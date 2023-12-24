variable "aks_cluster_name" {
  description = "The name of the AKS cluster that will be created"
  type        = string
  default     = "$module.aks_cluster.aks_cluster_name"
}

variable "cluster_location" {
  description = "The Azure region where the AKS cluster will be deployed to"
  type        = string
  default     = "$module.aks_cluster.location"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "$module.aks_cluster.dns_prefix"
}

variable "kubernetes_version" {
  description = "Specifies the version of Kubernetes the AKS cluster will use"
  type        = string
  default     = "$module.aks_cluster.kubernetes_version"
}

variable "service_principal_client_id" {
  description = "The Client ID of the service principal used for authenticating and managing the AKS cluster"
  type        = string
  default     = "$module.aks_cluster.service_principal_client_id"
}

variable "service_principal_client_secret" {
  description = "Supplies the Client Secret for the service principal"
  type        = string
  default     = "$module.aks_cluster.service_principal_client_secret"
}

# Output variables from networking-module

variable "resource_group_name" {
  description = "The name of the Azure resource group where the networking resources will be deployed in."
  type        = string
  default     = "$module.networking.resource_group_name"
}

variable "vnet_id" {
  description = "ID of the Virtual Network (VNet)."
  type        = string
  default     = "$module.networking.vnet_id"
}

variable "control_plane_subnet_id" {
  description = "ID of the control plane subnet."
  type        = string
  default     = "$module.networking.control_plane_subnet_id"
}

variable "worker_node_subnet_id" {
  description = "ID of the worker node subnet."
  type        = string
  default     = "$module.networking.worker_node_subnet_id"
}

variable "aks_nsg_id" {
  description = "ID of the Network Security Group (NSG) for AKS cluster."
  type        = string
  default     = "$module.networking.aks_nsg_id"
}