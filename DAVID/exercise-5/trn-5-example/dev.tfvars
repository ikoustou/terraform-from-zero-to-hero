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

#SG ping public
from_port_ping_public = "-1"
to_port_ping_public = "-1"
protocol_ping_public = "icmp"
cidr_blocks_ping_public = [ "0.0.0.0/0" ]

#SG ping private
from_port_ping_private = "-1"
to_port_ping_private = "-1"
protocol_ping_private = "icmp"
cidr_blocks_ping_private = [ "10.0.1.0/24" ]

#SG ssh
from_port_ssh = "22"
to_port_ssh = "22"
protocol_ssh = "tcp"
cidr_blocks_ssh = [ "0.0.0.0/0" ] #open to all for testing only

#ec2 public
# ami_id_public = "ami-08b6f2a5c291246a0" # This is now optional since data block finds the ID automatically 
instance_type_public = "t2.micro"
key_name_public = "terraform-training" # SET YOUR OWN KEY PAIR HERE

#ec2 private
# ami_id_private = "ami-08b6f2a5c291246a0" # This is now optional since data block finds the ID automatically 
instance_type_private = "t2.micro"
key_name_private = "terraform-training" # SET YOUR OWN KEY PAIR HERE