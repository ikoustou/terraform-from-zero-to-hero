variable "subnet_ids" {
  type = list(string)
}

variable "transit_gateway_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "transit_gateway_default_route_table_association" {
  type = bool
  default = null
}

variable "transit_gateway_default_route_table_propagation" {
  type = bool
  default = null
}