variable "route_table_id" {
  type = string
  description = "route table id"
}

variable "destination_cidr_block" {
  type = string
  description = "destination cidr block"
}

variable "gateway_id" {
  type = string
  description = "(Optional) Identifier of a VPC internet gateway or a virtual private gateway."
}