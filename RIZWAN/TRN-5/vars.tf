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

variable "public_map_public_ip_on_launch" {
  type        = bool
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
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

variable "sg_pub_icmp_name" {
  type        = string
  description = "Name of the security group."
}

variable "sg_pub_icmp_description" {
  type        = string
  description = "Security group description."
}

variable "in_pub_icmp_from_port" {
  type        = number
  description = "Start port."
}

variable "in_pub_icmp_to_port" {
  type        = number
  description = "End range port."
}

variable "in_pub_icmp_protocol" {
  type        = string
  description = "Protocol."
}

variable "in_pub_icmp_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks."
}

variable "sg_pub_icmp_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "sg_priv_icmp_name" {
  type        = string
  description = "Name of the security group."
}

variable "sg_priv_icmp_description" {
  type        = string
  description = "Security group description."
}

variable "in_priv_icmp_from_port" {
  type        = number
  description = "Start port."
}

variable "in_priv_icmp_to_port" {
  type        = number
  description = "End range port."
}

variable "in_priv_icmp_protocol" {
  type        = string
  description = "Protocol."
}

variable "in_priv_icmp_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks."
}

variable "sg_priv_icmp_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "sg_pub_ssh_name" {
  type        = string
  description = "Name of the security group."
}

variable "sg_pub_ssh_description" {
  type        = string
  description = "Security group description."
}

variable "in_pub_ssh_from_port" {
  type        = number
  description = "Start port."
}

variable "in_pub_ssh_to_port" {
  type        = number
  description = "End range port."
}

variable "in_pub_ssh_protocol" {
  type        = string
  description = "Protocol."
}

variable "in_pub_ssh_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks."
}

variable "sg_pub_ssh_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}
  
variable "i_public_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "i_public_key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "i_public_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}

variable "i_private_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "i_private_key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance."
}

variable "i_private_tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}