variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

variable "vpc_cidr_block" {
  type = string
  description = "CIDR for VPC"
}

variable "vpc_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "subnet_public_cidr_block" {
  type = string
  description = "CIDR for first subnet"
}

variable "subnet_private_cidr_block" {
  type = string
  description = "CIDR for second subnet"
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Used to decide if a public ip is assigned to instances in the subnet"
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

variable "from_port" {
  type = string
  description = "security group from port"
}

variable "to_port" {
  type = string
  description = "security group to port"
}

variable "protocol" {
  type = string
  description = "security group protocol"
}

variable "sg_cidr_blocks" {
  type = list(string)
  description = "List of CIDR blocks."
}

variable "ami_id" {
  type = string
  description = "ami id"
}

variable "instance_type" {
  type = string
  description = "instance type"
}

variable "key_name" {
  type = string
  description = "key name"
}

variable "security_group_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "ec2_tags" {
  type        = map
  description = "Tags for AWS Resource"
}