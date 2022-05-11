variable "amazon_side_asn" {
  type        = string
  description = "Private Autonomous System Number (ASN) for the Amazon side of a BGP session."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}