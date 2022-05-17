variable "region" {
  type = string
  description = "AWS region to deploy resources"
}

#VPC Vars 
variable "vpc1_cidr_block" {
  type = string
  description = "CIDR for VPC"
}

variable "vpc2_cidr_block" {
  type = string
  description = "CIDR for VPC"
}

variable "vpc1_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "vpc2_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "availability_zone1" {
  description = "Availability zone1"
  type        = string
}

variable "availability_zone2" {
  description = "Availability zone2"
  type        = string
}


variable "vpc1_subnet1_cidr_block" {
  type = string
  description = "CIDR for vpc1 subnet1"
}

variable "vpc1_subnet2_cidr_block" {
  type = string
  description = "CIDR for vpc1 subnet2"
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Used to decide if a public ip is assigned to instances in the subnet"
}

variable "subnet_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

#Private Subnet
variable "vpc2_subnet1_cidr_block" {
  type = string
  description = "CIDR for vpc2 subnet1"
}

variable "vpc2_subnet2_cidr_block" {
  type = string
  description = "CIDR for vpc2 subnet2"
}

#Route Table
variable "route_table_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

# Internet GateWay
variable "internet_gateway_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

#Route
variable "destination_cidr_block" {
  type        = string
  description = "Public route for ig"
}

#SG Ping Public
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

variable "security_group_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

# Security Group SSH Public
variable "from_port_ssh_public" {
  type = string
  description = "security group from port"
}

variable "to_port_ssh_public" {
  type = string
  description = "security group to port"
}

variable "protocol_ssh_public" {
  type = string
  description = "security group protocol"
}

variable "security_group_tags_ssh_public" {
  type        = map
  description = "Tags for AWS Resource"
}

# Security Group Ping Private
variable "sg_cidr_blocks_private" {
  type = list(string)
  description = "List of CIDR blocks."
}

variable "security_group_tags_private" {
  type        = map
  description = "Tags for AWS Resource"
}

#EC2 Public
variable "instance_type" {
  type = string
  description = "instance type"
}

variable "key_name" {
  type = string
  description = "key name"
}

variable "ec2_tags_public" {
  type        = map
  description = "Tags for AWS Resource"
}

# EC2 Private
variable "ec2_tags_private" {
  type        = map
  description = "Tags for AWS Resource"
}

#vpc peering
variable "vpc_peering_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "vpc_peering_accepter_tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "amazon_side_asn" {
  description = "Amazon Side ASN"
  type        = string
}