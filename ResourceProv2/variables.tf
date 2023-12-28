variable "resource_group" {
    description = "Name of resource group."
    type = string
    default = "testgroup2"  
}

variable "resource_location" {
  description = "Location of resource group"
  type = string
  default = "UK South"
}

variable "resource_replication" {
    description = "account replication type"
    type = string
    default = "LRS"
}


