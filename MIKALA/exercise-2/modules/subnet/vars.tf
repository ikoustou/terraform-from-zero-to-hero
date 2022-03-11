variable "vpc_id" {
  type        = string
  description = "The VPC ID"
}

variable "cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the subnet"
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource"
}