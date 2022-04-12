variable "region" {
  type = string
  description = "AWS region to deploy resources"
}


# VPCs

variable "vpc1_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the VPC."
}

variable "vpc1_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "vpc2_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the VPC."
}

variable "vpc2_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}


# Subnets

variable "sn1_pub_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the subnet."
}

variable "public_map_public_ip_on_launch" {
  type        = bool
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

variable "sn1_pub_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "sn1_priv_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the subnet."
}

variable "sn1_priv_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "sn2_pub_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the subnet."
}

variable "sn2_pub_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "sn2_priv_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the subnet."
}

variable "sn2_priv_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}


# Route Tables and RT Associations

variable "rt1-pub_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "rt1-priv_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "rt2-pub_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "rt2-priv_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}


# Internet Gateway

variable "igw_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}


# Default Route

variable "default_dest_cidr_block" {
  type        = string
  description = "The destination CIDR block."
}


# Security Groups

variable "sg1_icmp_name" {
  type        = string
  description = "Name of the security group."
}

variable "sg1_icmp_description" {
  type        = string
  description = "Security group description."
}

variable "in_sg1_icmp_from_port" {
  type        = number
  description = "Start port."
}

variable "in_sg1_icmp_to_port" {
  type        = number
  description = "End range port."
}

variable "in_sg1_icmp_protocol" {
  type        = string
  description = "Protocol."
}

variable "in_sg1_icmp_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks."
}

variable "sg1_icmp_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "sg1_ssh_name" {
  type        = string
  description = "Name of the security group."
}

variable "sg1_ssh_description" {
  type        = string
  description = "Security group description."
}

variable "in_sg1_ssh_from_port" {
  type        = number
  description = "Start port."
}

variable "in_sg1_ssh_to_port" {
  type        = number
  description = "End range port."
}

variable "in_sg1_ssh_protocol" {
  type        = string
  description = "Protocol."
}

variable "in_sg1_ssh_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks."
}

variable "sg1_ssh_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "sg2_icmp_name" {
  type        = string
  description = "Name of the security group."
}

variable "sg2_icmp_description" {
  type        = string
  description = "Security group description."
}

variable "in_sg2_icmp_from_port" {
  type        = number
  description = "Start port."
}

variable "in_sg2_icmp_to_port" {
  type        = number
  description = "End range port."
}

variable "in_sg2_icmp_protocol" {
  type        = string
  description = "Protocol."
}

variable "in_sg2_icmp_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks."
}

variable "sg2_icmp_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}


# Instances

variable "i1_pub_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "i1_pub_key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "i1_pub_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "i1_priv_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "i1_priv_key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "i1_priv_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "i2_pub_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "i2_pub_key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "i2_pub_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "i2_priv_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "i2_priv_key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "i2_priv_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}


# Peering Connection

variable "auto_accept" {
  type        = bool
  description = "Accept the peering."
}

variable "vpc-pc_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}


# VC Routes

variable "vc1_dest_cidr_block" {
  type        = string
  description = "The destination CIDR block."
}

variable "vc2_dest_cidr_block" {
  type        = string
  description = "The destination CIDR block."
}