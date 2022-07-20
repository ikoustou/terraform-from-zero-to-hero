variable "route_table_id" {
  type = string
  description = "id of route table"
}

variable "destination_cidr_block" {
  type = string
  description = "CIDR of the destination"
}

variable "gateway_id" {
  type = string
  description = "internet gateway id"
  default = null
}

variable "transit_gateway_id" {
  type = string
  description = "transit_gateway_id"
  default = null
}

variable "vpc_endpoint_id" {
  type = string
  description = "vpc_endpoint_id"
  default = null
}

variable "vpc_peering_connection_id" {
  type = string
  description = "vpc_peering_connection_id"
  default = null
}
