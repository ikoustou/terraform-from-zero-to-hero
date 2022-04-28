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

# SG ping public
variable "from_port_ping_public" {
  type = string
  description = "from_port / icmp type for ping"
}

variable "to_port_ping_public" {
  type = string
  description = "to_port / icmp code for ping"
}

variable "protocol_ping_public" {
  type = string
  description = "protocol"
}

variable "cidr_blocks_ping_public" {
  type = list(string)
  description = "List of CIDR blocks."
}

#SG ping private
variable "from_port_ping_private" {
  type = string
  description = "from_port / icmp type for ping"
}

variable "to_port_ping_private" {
  type = string
  description = "to_port / icmp code for ping"
}

variable "protocol_ping_private" {
  type = string
  description = "protocol"
}

variable "cidr_blocks_ping_private" {
  type = list(string)
  description = "List of CIDR blocks."
}

#SG ssh
variable "from_port_ssh" {
  type = string
  description = "from_port / icmp type for ping"
}

variable "to_port_ssh" {
  type = string
  description = "to_port / icmp code for ping"
}

variable "protocol_ssh" {
  type = string
  description = "protocol"
}

variable "cidr_blocks_ssh" {
  type = list(string)
  description = "List of CIDR blocks."
}

#ec2 public
variable "instance_type_public" {
  type = string
  description = "instance type"
}

variable "key_name_public" {
  type = string
  description = "key-pair key name"
}

variable "ami_id_public" {
  type = string
  description = "ami id"
  default = null
}

#ec2 private
variable "instance_type_private" {
  type = string
  description = "instance type"
}

variable "key_name_private" {
  type = string
  description = "key-pair key name"
}

variable "ami_id_private" {
  type = string
  description = "ami id"
  default = null
}

###
# VPC2 related:
###

variable "vpc_cidr_block_2" {
  type = string
  description = "CIDR Block of the VPC"
}

variable "subnet_private_cidr_block_2" {
  type = string
  description = "CIDR Block of subnet 1"
}

variable "subnet_private_name_2" {
  type = string
  description = "subnet name for tagging"
}

variable "subnet_public_cidr_block_2" {
  type = string
  description = "CIDR Block of subnet 2"
}

variable "subnet_public_name_2" {
  type = string
  description = "subnet name for tagging"
}

variable "rt_private_name_2" {
  type = string
  description = "route table name / tagging"
}

variable "rt_public_name_2" {
  type = string
  description = "route table name / tagging"
}
