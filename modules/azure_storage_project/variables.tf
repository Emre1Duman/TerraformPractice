variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure resource group where the Storage Account will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the Storage Account will be deployed."
  type        = string
  default     = "UK South"  # Default to East US region
}

variable "account_tier" {
  description = "The storage account performance tier (Standard or Premium)."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the Storage Account (LRS, GRS, ZRS, or RAGRS)."
  type        = string
  default     = "LRS"
}