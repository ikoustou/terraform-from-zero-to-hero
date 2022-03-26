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
}
