variable "resource_group_name" {
  description = "The name of the Azure resource group where the networking resources will be deployed in."
  type        = string
  default     = "$module.networking.resource_group_name"
}

variable "location" {
  description = "The Azure region where the networking resources will be deployed to."
  type        = string
  default     = "$module.networking.location"
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