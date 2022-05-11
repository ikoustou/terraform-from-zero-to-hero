region                          = "us-east-1"

# VPCs
vpc1_cidr_block                 = "10.0.0.0/16"
vpc1_tags                       = {
  "Name" = "e7_vpc1"
}
vpc2_cidr_block                 = "10.1.0.0/16"
vpc2_tags                       = {
  "Name" = "e7_vpc2"
}

# Subnets
sn1_pub_cidr_block              = "10.0.0.0/24"
public_map_public_ip_on_launch  = true
sn1_pub_tags                    = {
  "Name" = "e7_subnet1_public"
}
sn2_priv_cidr_block             = "10.1.1.0/24"
sn2_priv_tags                   = {
  "Name" = "e7_subnet2_private"
}

# RTs and RTAs
rt1-pub_tags                    = {
  "Name" = "e7_rt1_public"
}
rt2-priv_tags                   = {
  "Name" = "e7_rt1_private"
}

# IGW
igw_tags                        = {
  "Name" = "e7_internet_gateway"
}

# Default Route
default_dest_cidr_block         = "0.0.0.0/0"

# Security Groups
sg1_icmp_name                   = "E7 VPC1 ICMP Security Group"
sg1_icmp_description            = "Allows inbound traffic ping from all CIDRs."
in_sg1_icmp_from_port           = -1
in_sg1_icmp_to_port             = -1
in_sg1_icmp_protocol            = "icmp"
in_sg1_icmp_cidr_blocks         = ["0.0.0.0/0"]
sg1_icmp_tags                   = {
  "Name" = "e7_vpc1_icmp_sg"
}
sg1_ssh_name                    = "E7 VPC1 SSH Security Group"
sg1_ssh_description             = "Allows inbound traffic SSH from all CIDRs."
in_sg1_ssh_from_port            = 22
in_sg1_ssh_to_port              = 22
in_sg1_ssh_protocol             = "tcp"
in_sg1_ssh_cidr_blocks          = ["0.0.0.0/0"]
sg1_ssh_tags                    = {
  "Name" = "e7_vpc1_ssh_sg"
}
sg2_icmp_name                   = "E7 VPC1 ICMP Security Group"
sg2_icmp_description            = "Allows inbound traffic ping from all CIDRs."
in_sg2_icmp_from_port           = -1
in_sg2_icmp_to_port             = -1
in_sg2_icmp_protocol            = "icmp"
in_sg2_icmp_cidr_blocks         = ["0.0.0.0/0"]
sg2_icmp_tags                   = {
  "Name" = "e7_vpc2_icmp_sg"
}

# Instances
i1_pub_type                     = "t2.micro"
i1_pub_key_name                 = "mikala-tf-zero-hero"
i1_pub_tags                     = {
  "Name" = "e7_vpc1_pub_ec2_instance"
}
i2_priv_type                    = "t2.micro"
i2_priv_key_name                = "mikala-tf-zero-hero"
i2_priv_tags                    = {
  "Name" = "e7_vpc2_priv_ec2_instance"
}

# TG
tgw_asn                        = "64512"
tgw_tags                       = {
  "Name" = "e7_transit_gateway"
}

tgwa-1_tags                       = {
  "Name" = "e7_tgw_vpc_attachment_1"
}

tgwa-2_tags                      = {
  "Name" = "e7_tgw_vpc_attachment_2"
}

# TG Routes
vpc1_dest_cidr_block            = "10.0.0.0/16"
vpc2_dest_cidr_block            = "10.1.0.0/16"