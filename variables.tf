variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "rg-terraform-lab"
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "Southeast Asia"
}
