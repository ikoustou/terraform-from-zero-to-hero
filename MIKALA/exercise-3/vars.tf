variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

variable "vpc_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the VPC."
}

variable "vpc_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "internet_gateway_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "public_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the subnet."
}

variable "public_subnet_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "rt-public_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "public_route_dest_cidr_block" {
  type        = string
  description = "The destination CIDR block."
}

variable "private_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the subnet."
}

variable "private_subnet_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "rt-private_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}
