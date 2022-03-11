variable "region" {
  type        = string
  description = "AWS region to deploy resources"
}

variable "vpc_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the VPC"
}

variable "vpc_tags" {
    type        = map
    description = "A map of tags to assign to the VPC"
}

variable "subnet_1_cidr_block" {
    type        = string
    description = "The IPv4 CIDR block for the subnet"
}

variable "subnet_1_tags" {
    type        = map
    description = "A map of tags to assign to the subnet"
}

variable "subnet_2_cidr_block" {
    type        = string
    description = "The IPv4 CIDR block for the subnet"
}

variable "subnet_2_tags" {
    type        = map
    description = "A map of tags to assign to the subnet"
}

variable "route_table_tags" {
    type        = map
    description = "A map of tags to assign to the route table"
}