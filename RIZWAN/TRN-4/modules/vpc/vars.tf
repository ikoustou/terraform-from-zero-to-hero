variable "cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the VPC."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}