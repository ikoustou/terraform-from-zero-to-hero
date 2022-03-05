variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

variable "vpc_cidr_block" {
  type = string
  description = "CIDR for VPC"
}

variable "subnet_1_cidr_block" {
  type = string
  description = "CIDR for first subnet"
}

variable "subnet_2_cidr_block" {
  type = string
  description = "CIDR for second subnet"
}