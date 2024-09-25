variable "region" {
  description = "The Azure Region in which all resources in this example should be created."
  type = string
  default     = "us-east-1"
  
}
variable "resource_group_name" {
  description = "The name of the resource group in which all resources in this example should be created."
  type = string
  default     = "terraform-rg"
}