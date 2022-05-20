variable "region" {
  type = string
  description = "aws region to create infrastructure in"
}

variable "availability_zone1" {
  description = "Availability zone1"
  type        = string
}

variable "availability_zone2" {
  description = "Availability zone2"
  type        = string
}

# --- VPC1 Variables ----
variable "vpc1_cidr_block" {
  description = "the CIDR Block of the vpc1"
  type        = string
}

variable "vpc1_subnet1_cidr_block" {
  description = "CIDR Block of VPC1 subnet1"
  type        = string
}
variable "vpc1_subnet1_tags" {
  type    = map(string)
  default = null
}

variable "vpc1_subnet1_map_public_ip_on_launch" {
  type    = string
  default = null
}

variable "vpc1_subnet2_cidr_block" {
  description = "CIDR Block of VPC1 subnet2"
  type        = string
}

variable "vpc1_subnet2_tags" {
  type    = map(string)
  default = null
}

variable "vpc1_rt1_public_name" {
  type = string
}
variable "vpc1_rt2_private_name" {
  type = string
}

# --- VPC2 Variables ----
variable "vpc2_cidr_block" {
  description = "the CIDR Block of the vpc2"
  type        = string
}

variable "vpc2_subnet1_cidr_block" {
  description = "CIDR Block of vpc2 subnet1"
  type        = string
}
variable "vpc2_subnet1_tags" {
  type    = map(string)
  default = null
}

variable "vpc2_subnet2_cidr_block" {
  description = "CIDR Block of vpc2 subnet2"
  type        = string
}

variable "vpc2_subnet2_tags" {
  type    = map(string)
  default = null
}

variable "vpc2_rt1_private_name" {
  type = string
}
variable "vpc2_rt2_private_name" {
  type = string
}

#######################################################

# ---  Security Groups ----
variable "sg1_from_port" {
  description = "(Required) The start port (or ICMP type number if protocol is icmp)"
  type = number
}
variable "sg1_to_port" {
  description = "(Required) The end port (or ICMP type number if protocol is icmp)"
  type = number
}
variable "sg1_protocol" {
  description = "(Required) -1 for all, tcp, udp, icmp, or icmpv6 "
  type = string
}
variable "sg1_cidr_blocks" {
  type = list(string)
}
variable "sg1_tags" {
  type    = map(string)
}

variable "sg2_from_port" {
  description = "(Required) The start port (or ICMP type number if protocol is icmp)"
  type = number
}
variable "sg2_to_port" {
  description = "(Required) The end port (or ICMP type number if protocol is icmp)"
  type = number
}
variable "sg2_protocol" {
  description = "(Required) -1 for all, tcp, udp, icmp, or icmpv6 "
  type = string
}
variable "sg2_cidr_blocks" {
  type = list(string)
}
variable "sg2_tags" {
  type    = map(string)
}

# --- EC2 instances ----

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
}
variable "key_name" {
  description = "ec2 key name"
  type        = string
}
variable "instance_bastion_tags" {
  type    = map(string)
}
variable "instance_vpc2_tags" {
  type    = map(string)
}

##################################################################

# --- TGW ----
variable "amazon_side_asn" {
  description = "Amazon side ASN"
  type        = string
}

#######################################################

# --- TGW-Route-Tables ---
variable "tgw_rt_vpc1_tags" {
  type = map(string)
}
variable "tgw_rt_vpc2_tags" {
  type = map(string)
}