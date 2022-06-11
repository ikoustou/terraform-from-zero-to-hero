variable "amazon_side_asn" {
  description = "Amazon side ASN"
  type        = string
}

variable "default_route_table_association" {
  type    = string
  default = "enable" 
}

variable "default_route_table_propagation" {
  type    = string
  default = "enable" 
}