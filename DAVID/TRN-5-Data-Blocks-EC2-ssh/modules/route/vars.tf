variable "route_table_id" {
  type = string
  description = "route table id"
}

variable "destination_cidr_block" {
  type = string
  description = "destination cidr block"
}

# One of the following target arguments must be supplied
variable "carrier_gateway_id" {
  type = string
  description = "Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone."
  default = null
}

variable "egress_only_gateway_id" {
  type = string
  description = "Identifier of a VPC Egress Only Internet Gateway."
  default = null
}

variable "gateway_id" {
  type = string
  description = "Identifier of a VPC internet gateway or a virtual private gateway."
  default = null
}

variable "nat_gateway_id" {
  type = string
  description = "Identifier of a VPC NAT gateway."
  default = null
}

variable "local_gateway_id" {
  type = string
  description = "Identifier of a Outpost local gateway."
  default = null
}

variable "network_interface_id" {
  type = string
  description = "Identifier of an EC2 network interface."
  default = null
}

variable "transit_gateway_id" {
  type = string
  description = "Identifier of an EC2 Transit Gateway."
  default = null
}

variable "vpc_endpoint_id" {
  type = string
  description = "Identifier of a VPC Endpoint."
  default = null
}

variable "vpc_peering_connection_id" {
  type = string
  description = "Identifier of a VPC peering connection."
  default = null
}