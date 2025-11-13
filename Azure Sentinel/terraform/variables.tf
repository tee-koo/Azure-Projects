variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group" {
  description = "RG where Log Analytics & Sentinel exist"
  type        = string
  default     = "rg-sentinel-az500"
}

variable "log_analytics_name" {
  description = "Existing LA workspace name"
  type        = string
  default     = "log-general"
}
