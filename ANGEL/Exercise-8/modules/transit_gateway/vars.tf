variable "amazon_side_asn" {
  description = "Amazon Side ASN"
  type        = string
}

variable "default_route_table_association" {
  type    = string
  default = null 
}

variable "default_route_table_propagation" {
  type    = string
  default = null
}