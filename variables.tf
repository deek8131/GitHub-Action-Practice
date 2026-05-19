# variable "subscription_id" {
#   description = "Azure Subscription ID"
#   type        = string
#   sensitive   = true
# }

variable "resource_group_name" {
  description = "Resource Group ka naam"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "Tags jo resource group pe lagenge"
  type        = map(string)
  default = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
