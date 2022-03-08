variable "vpc_id" {
  type = string
  description = "VPC ID where the subnet belongs"
}

variable "subnet_cidr_block" {
  type = string
  description = "CIDR Block of subnet"
}

variable "subnet_name" {
  type = string
  description = "subnet name for tagging"
}