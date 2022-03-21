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

variable "vpc_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "subnet_1_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "subnet_2_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "route_table_tags" {
  type        = map
  description = "Tags for AWS Resource"
}