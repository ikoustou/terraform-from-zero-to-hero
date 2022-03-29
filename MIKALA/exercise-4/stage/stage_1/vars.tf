# main.tf

variable "region" {
  type = string
  description = "AWS region to deploy resources"
}


# vpc_subnets_rt.tf

variable "vpc_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the VPC."
}

variable "vpc_tags" {
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


# igw_instance.tf

variable "internet_gateway_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "public_route_dest_cidr_block" {
  type        = string
  description = "The destination CIDR block."
}

variable "sg_name" {
  type        = string
  description = "Name of the security group."
}

variable "sg_description" {
  type        = string
  description = "Security group description."
}

variable "in_from_port" {
  type        = number
  description = "Start port."
}

variable "in_to_port" {
  type        = number
  description = "End range port."
}

variable "in_protocol" {
  type        = string
  description = "Protocol."
}

variable "in_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks."
}

variable "sg_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "ami" {
  type        = string
  description = "AMI to use for the instance."
}
  
variable "instance_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "instance_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}