region = "us-east-1"

#VPC
vpc1_cidr_block = "10.0.0.0/16"
vpc1_tags            = {
  "Name"  = "Exercise-7-VPC1"
}
vpc2_cidr_block = "10.1.0.0/16"
vpc2_tags            = {
  "Name"  = "Exercise-7-VPC2"
}
availability_zone1 = "us-east-1a"
availability_zone2 = "us-east-1b" 


vpc1_subnet1_cidr_block = "10.0.0.0/24"
subnet_tags       = {
  "Name"  = "Exercise-7-Subnets"
}
map_public_ip_on_launch = true
vpc2_subnet1_cidr_block = "10.1.0.0/24"


vpc1_subnet2_cidr_block = "10.0.1.0/24"

vpc2_subnet2_cidr_block = "10.1.1.0/24"

route_table_tags    = {
  "Name"  = "Exercise-7-Route-Tables"
}


#Internet Gateway
internet_gateway_tags    = {
  "Name"  = "Exercise-7-Internet_Gateway"
}

#Route
destination_cidr_block = "0.0.0.0/0"

#SG Ping Public
from_port = "-1"
to_port = "-1"
protocol = "icmp"
sg_cidr_blocks = [ "0.0.0.0/0" ]
security_group_tags    = {
  "Name"  = "Exercise-7-Security-Groups-Ping-Public"
}

#Security Group SSH Public
from_port_ssh_public = "22"
to_port_ssh_public = "22"
protocol_ssh_public = "tcp"
security_group_tags_ssh_public = {
  "Name"  = "Exercise-7-Security-Groups-SSH-Public"
}

#SG Ping Private
sg_cidr_blocks_private = [ "0.0.0.0/0" ]
security_group_tags_private = {
  "Name"  = "Exercise-7-Security-Groups-Ping-Private"
}

#EC2 Public
instance_type = "t2.micro"
key_name = "riz-tf-zero-hero"
ec2_tags_public   = {
  "Name"  = "Exercise-7-EC2-Public"
}

#EC2 Private
ec2_tags_private = {
  "Name"  = "Exercise-7-EC2-Private"
}

#VPC peering
vpc_peering_tags = {
  "Name"  = "Exercise-7-Peering"
}

vpc_peering_accepter_tags = {
  "Name"  = "Exercise-7-Peering-Accepter"
}

#Transit Gateway
amazon_side_asn = "65500"
