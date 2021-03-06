region = "us-east-1"

vpc_cidr_block = "10.0.0.0/16"
vpc_tags       = {
  "Name" = "e4_vpc"
}

public_cidr_block  = "10.0.0.0/24"
public_map_public_ip_on_launch = true
public_subnet_tags = {
  "Name" = "e4_public_subnet"
}

rt-public_tags = {
  "Name" = "e4_public_route_table"
}

private_cidr_block  = "10.0.1.0/24"
private_map_public_ip_on_launch = false
private_subnet_tags = {
  "Name" = "e4_private_subnet"
}

rt-private_tags = {
  "Name" = "e4_private_route_table"
}

internet_gateway_tags = {
  "Name" = "e4_internet_gateway"
}

public_route_dest_cidr_block = "0.0.0.0/0"

sg_name           = "E4 Security Group"
sg_description    = "Allows inbound traffic ping from all CIDRs."
in_from_port = -1
in_to_port   = -1
in_protocol  = "icmp"
in_cidr_blocks = ["0.0.0.0/0"]
sg_tags            = {
  "Name" = "e4_security_group"
}

ami           = "ami-0c02fb55956c7d316"
instance_type = "t2.micro"
key_name      = "mikala-tf-zero-hero"
instance_tags = {
  "Name" = "e4_ec2_instance"
}
