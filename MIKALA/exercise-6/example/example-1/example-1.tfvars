region                          = "us-east-1"

# VPCs
vpc1_cidr_block                 = "10.0.0.0/16"
vpc1_tags                       = {
  "Name" = "e6_vpc1"
}
vpc2_cidr_block                 = "10.1.0.0/16"
vpc2_tags                       = {
  "Name" = "e6_vpc2"
}

# Subnets
sn1_pub_cidr_block              = "10.0.0.0/24"
public_map_public_ip_on_launch  = true
sn1_pub_tags                    = {
  "Name" = "e6_subnet1_public"
}
sn1_priv_cidr_block             = "10.0.1.0/24"
sn1_priv_tags                   = {
  "Name" = "e6_subnet1_private"
}
sn2_pub_cidr_block              = "10.1.0.0/24"
sn2_pub_tags                    = {
  "Name" = "e6_subnet2_public"
}
sn2_priv_cidr_block             = "10.1.1.0/24"
sn2_priv_tags                   = {
  "Name" = "e6_subnet2_private"
}

# RTs and RTAs
rt1-pub_tags                    = {
  "Name" = "e6_rt1_public"
}
rt1-priv_tags                   = {
  "Name" = "e6_rt1_private"
}
rt1-pub_tags                    = {
  "Name" = "e6_rt2_public"
}
rt2-priv_tags                   = {
  "Name" = "e6_rt1_private"
}

# IGW
igw_tags                        = {
  "Name" = "e6_internet_gateway"
}

# Default Route
default_dest_cidr_block         = "0.0.0.0/0"

# Instances
sg1_icmp_name                   = "E6 VPC1 ICMP Security Group"
sg1_icmp_description            = "Allows inbound traffic ping from all CIDRs."
in_sg1_icmp_from_port           = -1
in_sg1_icmp_to_port             = -1
in_sg1_icmp_protocol            = "icmp"
in_sg1_icmp_cidr_blocks         = ["0.0.0.0/0"]
sg1_icmp_tags                   = {
  "Name" = "e6_vpc1_icmp_sg"
}
sg1_ssh_name                    = "E6 VPC1 SSH Security Group"
sg1_ssh_description             = "Allows inbound traffic SSH from all CIDRs."
in_sg1_ssh_from_port            = 22
in_sg1_ssh_to_port              = 22
in_sg1_ssh_protocol             = "tcp"
in_sg1_ssh_cidr_blocks          = ["0.0.0.0/0"]
sg1_ssh_tags                    = {
  "Name" = "e6_vpc1_ssh_sg"
}
sg2_icmp_name                   = "E6 VPC1 ICMP Security Group"
sg2_icmp_description            = "Allows inbound traffic ping from all CIDRs."
in_sg2_icmp_from_port           = -1
in_sg2_icmp_to_port             = -1
in_sg2_icmp_protocol            = "icmp"
in_sg2_icmp_cidr_blocks         = ["0.0.0.0/0"]
sg2_icmp_tags                   = {
  "Name" = "e6_vpc2_icmp_sg"
}

# Instances
i1_pub_type                     = "t2.micro"
i1_pub_key_name                 = "mikala-tf-zero-hero"
i1_pub_tags                     = {
  "Name" = "e6_vpc1_pub_ec2_instance"
}
i1_priv_type                    = "t2.micro"
i1_priv_key_name                = "mikala-tf-zero-hero"
i1_priv_tags                    = {
  "Name" = "e6_vpc1_priv_ec2_instance"
}
i2_pub_type                     = "t2.micro"
i2_pub_key_name                 = "mikala-tf-zero-hero"
i2_pub_tags                     = {
  "Name" = "e6_vpc2_pub_ec2_instance"
}
i2_priv_type                    = "t2.micro"
i2_priv_key_name                = "mikala-tf-zero-hero"
i2_priv_tags                    = {
  "Name" = "e6_vpc2_priv_ec2_instance"
}

# PC
auto_accept                     = true
vpc-pc_tags                     = {
  "Name" = "e6_vpc_peering_connection"
}

# Peering Routes
vc1_dest_cidr_block             = "10.1.0.0/16"
vc2_dest_cidr_block             = "10.0.0.0/16"