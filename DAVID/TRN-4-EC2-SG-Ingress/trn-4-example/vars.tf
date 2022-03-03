variable "region" {
  type = string
  description = "aws region to create infrastructure in"
}

variable "vpc_cidr_block" {
  type = string
  description = "CIDR Block of the VPC"
}

variable "subnet_private_cidr_block" {
  type = string
  description = "CIDR Block of subnet 1"
}

variable "subnet_private_name" {
  type = string
  description = "subnet name for tagging"
}

variable "subnet_public_cidr_block" {
  type = string
  description = "CIDR Block of subnet 2"
}

variable "subnet_public_name" {
  type = string
  description = "subnet name for tagging"
}

variable "rt_private_name" {
  type = string
  description = "route table name / tagging"
}

variable "rt_public_name" {
  type = string
  description = "route table name / tagging"
}

variable "igw_name" {
  type = string
  description = "igw name / tagging"
}

variable "destination_cidr_block" {
  type = string
  description = "route destination cidr block"
}

variable "name" {
  type = string
  description = "(optional) describe your variable"
}

variable "from_port" {
  type = string
  description = "from_port / icmp type for ping"
}

variable "to_port" {
  type = string
  description = "from_port / icmp code for ping"
}

variable "protocol" {
  type = string
  description = "protocol"
}

variable "cidr_blocks" {
  type = list(string)
  description = "List of CIDR blocks."
}

variable "instance_type" {
  type = string
  description = "instance type"
}

variable "key_name" {
  type = string
  description = "key-pair key name"
}

variable "ami_id" {
  type = string
  description = "ami id"
}