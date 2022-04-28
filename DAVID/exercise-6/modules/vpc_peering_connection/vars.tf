variable "peer_vpc_id" {
  type        = string
  description = "(Required) The ID of the VPC with which you are creating the VPC Peering Connection."
}

variable "vpc_id" {
  type        = string
  description = "(Required) The ID of the requester VPC."
}