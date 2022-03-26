variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

variable "vpc_cidr_block" {
  type = string
  description = "CIDR for VPC"
}

variable "subnet_public_cidr_block" {
  type = string
  description = "CIDR for first subnet"
}

variable "subnet_private_cidr_block" {
  type = string
  description = "CIDR for second subnet"
}

variable "vpc_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "subnet_public_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "subnet_private_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "route_table_public_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "route_table_private_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "internet_gateway_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "destination_cidr_block" {
  type        = string
  description = "Public route for ig"
}