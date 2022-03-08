variable "vpc_id" {
  type = string
  description = "The VPC ID"
}

variable "subnet_cidr_block" {
  type = string
  description = "The IPv4 CIDR block for the subnet"
}

variable "subnet_name" {
  type = string
  description = "subnet name tag"
}