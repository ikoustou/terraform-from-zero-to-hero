region = "us-east-1"

vpc_cidr_block = "10.0.0.0/16"
vpc_tags       = {
  "Name" = "e5_vpc"
}

public_cidr_block  = "10.0.0.0/24"
public_map_public_ip_on_launch = true
public_subnet_tags = {
  "Name" = "e5_public_subnet"
}

rt-public_tags = {
  "Name" = "e5_public_route_table"
}

private_cidr_block  = "10.0.1.0/24"
private_subnet_tags = {
  "Name" = "e5_private_subnet"
}

rt-private_tags = {
  "Name" = "e5_private_route_table"
}

internet_gateway_tags = {
  "Name" = "e5_internet_gateway"
}

public_route_dest_cidr_block = "0.0.0.0/0"

sg_pub_icmp_name         = "E5 Public ICMP Security Group"
sg_pub_icmp_description  = "Allows inbound traffic ping from all CIDRs."
in_pub_icmp_from_port    = -1
in_pub_icmp_to_port      = -1
in_pub_icmp_protocol     = "icmp"
in_pub_icmp_cidr_blocks  = ["0.0.0.0/0"]
sg_pub_icmp_tags         = {
  "Name" = "e5_pub_icmp_sg"
}

sg_priv_icmp_name               = "E5 Private ICMP Security Group"
sg_priv_icmp_description        = "Allows inbound traffic ping from public EC2 instance."
in_priv_icmp_from_port          = -1
in_priv_icmp_to_port            = -1
in_priv_icmp_protocol           = "icmp"
in_priv_icmp_cidr_blocks        = ["10.0.0.0/24"]
sg_priv_icmp_tags               = {
  "Name" = "e5_priv_icmp_sg"
}

sg_pub_ssh_name                 = "E5 Public SSH Security Group"
sg_pub_ssh_description          = "Allows inbound traffic SSH from all CIDRs."
in_pub_ssh_from_port            = 22
in_pub_ssh_to_port              = 22
in_pub_ssh_protocol             = "tcp"
in_pub_ssh_cidr_blocks          = ["0.0.0.0/0"]
sg_pub_ssh_tags                 = {
  "Name" = "e5_priv_icmp_sg"
}

i_public_type                   = "t2.micro"
i_public_key_name               = "riz-tf-zero-hero"
i_public_tags                   = {
  "Name" = "e5_pub_ec2_instance"
}

i_private_type                  = "t2.micro"
i_private_key_name              = "riz-tf-zero-hero"
i_private_tags                  = {
  "Name" = "e5_priv_ec2_instance"
}
