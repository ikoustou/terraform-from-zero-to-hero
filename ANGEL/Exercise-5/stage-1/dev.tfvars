region = "us-east-1"

#VPC
vpc_cidr_block = "10.0.0.0/16"
vpc_tags            = {
  "Name"  = "Exercise-5-VPC"
}

#Public Subnet
subnet_public_cidr_block = "10.0.0.0/24"
subnet_public_tags       = {
  "Name"  = "Exercise-5-Public-Subnet"
}
map_public_ip_on_launch = true

#Private Subnet
subnet_private_cidr_block = "10.0.1.0/24"
subnet_private_tags       = {
  "Name"  = "Exercise-5-Private-Subnet"
}

#Public Route Table
route_table_public_tags    = {
  "Name"  = "Exercise-5-Public-Route-Table"
}

#Private Route Table
route_table_private_tags    = {
  "Name"  = "Exercise-5-Private-Route-Table"
}

#Internet Gateway
internet_gateway_tags    = {
  "Name"  = "Exercise-4-Internet_Gateway"
}

#Route
destination_cidr_block = "0.0.0.0/0"

#SG Ping Public
from_port = "-1"
to_port = "-1"
protocol = "icmp"
sg_cidr_blocks = [ "0.0.0.0/0" ]
security_group_tags    = {
  "Name"  = "Exercise-5-Security-Groups-Ping-Public"
}

#Security Group SSH Public
from_port_ssh_public = "22"
to_port_ssh_public = "22"
protocol_ssh_public = "tcp"
security_group_tags_ssh_public = {
  "Name"  = "Exercise-5-Security-Groups-SSH-Public"
}

#SG Ping Private
sg_cidr_blocks_private = [ "0.0.0.0/0" ]
security_group_tags_private = {
  "Name"  = "Exercise-5-Security-Groups-Ping-Private"
}

#EC2 Public
instance_type = "t2.micro"
key_name = "ec2_exercise_name"
ec2_tags_public   = {
  "Name"  = "Exercise-5-EC2-Public"
}

#EC2 Private
ec2_tags_private = {
  "Name"  = "Exercise-5-EC2-Private"
}