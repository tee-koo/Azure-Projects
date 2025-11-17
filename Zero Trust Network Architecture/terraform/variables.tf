variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group" {
  description = "RG where all resources exists"
  type        = string
  default     = "rg-zero-network"
}
