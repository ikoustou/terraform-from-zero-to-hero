variable "vpc_peering_connection_id" {
  type        = string
  description = "VPC peering connection id"
}

variable "auto_accept" {
  type        = bool
  default     = null
  description = "Accept the peering."
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}
