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
  description = "Identifier of a VPC internet gateway or a virtual private gateway."
}