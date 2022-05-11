variable "peer_vpc_id" {
  type        = string
  description = "VPC id of accepter"
}

variable "vpc_id" {
  type        = string
  description = "VPC Id of requester."
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
