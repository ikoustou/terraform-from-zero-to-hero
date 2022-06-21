variable "vpc_cidr_block" {
  type = string
  description = "CIDR of the VPC"
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}
