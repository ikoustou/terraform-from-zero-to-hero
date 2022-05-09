region             = "us-east-1"
availability_zone1 = "us-east-1a"
availability_zone2 = "us-east-1b"

vpc1_cidr_block         = "10.0.0.0/16"
vpc1_subnet1_cidr_block = "10.0.0.0/24"
vpc1_subnet1_tags       = {
    Name = "vpc1_subnet1"
}
vpc1_subnet1_map_public_ip_on_launch = true
vpc1_subnet2_cidr_block = "10.0.1.0/24"
vpc1_subnet2_tags       = {
    Name = "vpc1_subnet2"
}
vpc1_rt1_public_name    = "VPC1_RT1_Public"
vpc1_rt2_private_name   = "VPC1_RT2_Private"

vpc2_cidr_block         = "10.1.0.0/16"
vpc2_subnet1_cidr_block = "10.1.0.0/24"
vpc2_subnet1_tags       = {
    Name = "vpc2_subnet1"
}
vpc2_subnet2_cidr_block = "10.1.1.0/24"
vpc2_subnet2_tags       = {
    Name = "vpc2_subnet2"
}
vpc2_rt1_private_name = "VPC2_RT1_Private"
vpc2_rt2_private_name = "VPC2_RT2_Private"
###########################################
#SG1 exists in VPC2
sg1_from_port     = -1
sg1_to_port       = -1
sg1_protocol      = "icmp"
sg1_cidr_blocks   = ["10.0.0.0/16"] # VPC1 CIDR
sg1_tags          = {
    Name = "sg-vpc2-ping"
}

#SG2 exists in VPC1
sg2_from_port     = 22
sg2_to_port       = 22
sg2_protocol      = "tcp"
sg2_cidr_blocks   = ["0.0.0.0/0"]
sg2_tags          = {
    Name = "sg-vpc1-ssh"
}

instance_type         = "t2.micro"
key_name              = "john_virginia_1"
instance_bastion_tags = {
    Name = "bastion"
}
instance_vpc2_tags    = {
    Name = "for_ping"
}

# tgw
amazon_side_asn = "65500"