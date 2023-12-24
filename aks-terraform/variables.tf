variable "resource_group_name" {
  description = "The name of the Azure resource group where the networking resources will be deployed in."
  type        = string
  default     = "networking-resource-group"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster that will be created."
  type        = string
  default     = "terraform-aks-cluster"
}

variable "location" {
  description = "The Azure region where the networking resources will be deployed to."
  type        = string
  default     = "UK South"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network (VNet)."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
  sensitive   = true
}

variable "client_id" {
  description = "Azure service principal client ID"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "Azure service principal client secret"
  type        = string
  sensitive   = true
}

variable "dns_prefix" {
  description = "Sets the DNS prefix for the AKS cluster, which is used to create a unique DNS name for the cluster."
  type        = string
  default     = "myaks-project"
}

variable "kubernetes_version" {
  description = "Specifies the version of Kubernetes to be used for the AKS cluster."
  type        = string
  default     = "1.26.6"
}