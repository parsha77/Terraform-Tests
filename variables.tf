variable "tags" {
  description = "Map of tags to apply to resources. Must include all policy-required keys."
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "Azure location for resources"
  type        = string
  default     = "canadacentral"
}
