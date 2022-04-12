variable "peer_vpc_id" {
  type        = string
  description = "The ID of the VPC with which you are creating the VPC Peering Connection."
}

variable "vpc_id" {
  type        = string
  description = "The ID of the requester VPC."
}

variable "auto_accept" {
  type        = bool
  default     = null
  description = "Accept the peering."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}