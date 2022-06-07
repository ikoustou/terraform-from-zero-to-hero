region                          = "us-east-1"
availability_zone1              = "us-east-1a"
availability_zone2              = "us-east-1b"

# VPCs
vpc1_cidr_block                 = "10.0.0.0/16"
vpc1_tags                       = {
  "Name" = "e8_vpc1"
}
vpc2_cidr_block                 = "10.1.0.0/16"
vpc2_tags                       = {
  "Name" = "e8_vpc2"
}

# Subnets
sn1_pub_cidr_block              = "10.0.0.0/24"
public_map_public_ip_on_launch  = true
sn1_pub_tags                    = {
  "Name" = "e8_subnet1_public"
}
sn1_priv_cidr_block             = "10.0.1.0/24"
sn1_priv_tags                   = {
  "Name" = "e8_subnet1_private"
}
sn2_pub_cidr_block             = "10.1.0.0/24"
sn2_pub_tags                   = {
  "Name" = "e8_subnet2_public"
}
sn2_priv_cidr_block             = "10.1.1.0/24"
sn2_priv_tags                   = {
  "Name" = "e8_subnet2_private"
}

# RTs and RTAs
rt1-pub_tags                    = {
  "Name" = "e8_rt1_public"
}
rt1-priv_tags                    = {
  "Name" = "e8_rt1_private"
}
rt2-pub_tags                    = {
  "Name" = "e8_rt2_public"
}
rt2-priv_tags                   = {
  "Name" = "e8_rt1_private"
}

# IGW
igw_tags                        = {
  "Name" = "e8_internet_gateway"
}

# Default Route
default_dest_cidr_block         = "0.0.0.0/0"

# Security Groups
sg_icmp_name                   = "E7 VPC1 ICMP Security Group"
sg_icmp_description            = "Allows inbound traffic ping from all CIDRs."
in_sg_icmp_from_port           = -1
in_sg_icmp_to_port             = -1
in_sg_icmp_protocol            = "icmp"
in_sg_icmp_cidr_blocks         = ["10.0.0.0/16"]
sg_icmp_tags                   = {
  "Name" = "e8_vpc1_icmp_sg"
}
sg_ssh_name                    = "E7 VPC1 SSH Security Group"
sg_ssh_description             = "Allows inbound traffic SSH from all CIDRs."
in_sg_ssh_from_port            = 22
in_sg_ssh_to_port              = 22
in_sg_ssh_protocol             = "tcp"
in_sg_ssh_cidr_blocks          = ["0.0.0.0/0"]
sg_ssh_tags                    = {
  "Name" = "e8_vpc1_ssh_sg"
}

# Instances
i1_pub_type                     = "t2.micro"
i1_pub_key_name                 = "mikala-tf-zero-hero"
i1_pub_tags                     = {
  "Name" = "e8_vpc1_pub_ec2_instance"
}
i2_priv_type                    = "t2.micro"
i2_priv_key_name                = "mikala-tf-zero-hero"
i2_priv_tags                    = {
  "Name" = "e8_vpc2_priv_ec2_instance"
}

# TGW
tgw_asn                        = "64512"
default_rt_assoc               = "disable"
default_rt_propa               = "disable"
tgw_tags                       = {
  "Name" = "e8_transit_gateway"
}

tgwa-1_tags                      = {
  "Name" = "e8_tgw_vpc_attachment_1"
}
tgw_default_rt_assoc             = false
tgw_default_rt_propa             = false

tgwa-2_tags                      = {
  "Name" = "e8_tgw_vpc_attachment_2"
}

# TGW Route Tables and Routes
tgw_rt_1_tags                    = {
  "Name" = "e8_tgw_route_table_1"
}

tgw_rt_2_tags                    = {
  "Name" = "e8_tgw_route_table_2"
}
