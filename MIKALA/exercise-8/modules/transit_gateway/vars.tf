variable "amazon_side_asn" {
  type        = string
  description = "Private Autonomous System Number (ASN) for the Amazon side of a BGP session."
}

variable "default_route_table_association" {
  default     = null
  type        = string
  description = "Whether resource attachments are automatically associated with the default association route table."
}

variable "default_route_table_propagation" {
  default     = null
  type        = string
  description = "Whether resource attachments automatically propagate routes to the default propagation route table."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}