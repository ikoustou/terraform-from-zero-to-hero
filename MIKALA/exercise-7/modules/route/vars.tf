variable "route_table_id" {
  type        = string
  description = "The ID of the routing table."
}

variable "destination_cidr_block" {
  type        = string
  description = "The destination CIDR block."
}

variable "gateway_id" {
  type        = string
  default     = null
  description = "Identifier of a VPC internet gateway or a virtual private gateway."
}

variable "nat_gateway_id" {
  type        = string
  default     = null
  description = "Identifier of a VPC NAT gateway."
}

variable "local_gateway_id" {
  type        = string
  default     = null
  description = " Identifier of a Outpost local gateway."
}

variable "network_interface_id" {
  type        = string
  default     = null
  description = "Identifier of an EC2 network interface."
}

variable "transit_gateway_id" {
  type        = string
  default     = null
  description = "Identifier of an EC2 Transit Gateway."
}

variable "vpc_endpoint_id" {
  type        = string
  default     = null
  description = "Identifier of a VPC Endpoint."
}

variable "vpc_peering_connection_id" {
  type        = string
  default     = null
  description = " Identifier of a VPC peering connection."
}

