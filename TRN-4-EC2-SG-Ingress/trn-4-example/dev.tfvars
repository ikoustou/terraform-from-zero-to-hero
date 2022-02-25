region = "us-east-2"
name = "trn-4-example"

#vpc
vpc_cidr_block = "10.0.0.0/16"

#private subnet
subnet_private_cidr_block = "10.0.0.0/24"
subnet_private_name = "private-subnet"

#public subnet
subnet_public_cidr_block = "10.0.1.0/24"
subnet_public_name = "public-subnet"

#private route table
rt_private_name = "rt-private"

#public route table
rt_public_name = "rt-public"

#igw
igw_name = "igw"

#route
destination_cidr_block = "0.0.0.0/0"

#SG
from_port = "8"
to_port = "0"
protocol = "icmp"
cidr_blocks = [ "0.0.0.0/0" ]

#ec2
ami_id = "ami-0b614a5d911900a9b"
instance_type = "t2.micro"
key_name = "terraform-training"