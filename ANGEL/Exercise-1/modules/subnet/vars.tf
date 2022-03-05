variable "subnet_cidr_block" {
  type = string
  description = "CIDR of the Subnet"
}

variable "vpc_id" {
  type = string
  description = "VPC id to associate with subnet"
}