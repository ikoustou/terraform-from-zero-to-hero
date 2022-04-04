region = "us-east-1"
vpc_cidr_block = "10.0.0.0/16"
subnet_public_cidr_block = "10.0.0.0/24"
subnet_private_cidr_block = "10.0.1.0/24"
vpc_tags            = {
  "Name"  = "Exercise-4-VPC"
}
subnet_public_tags       = {
  "Name"  = "Exercise-4-Public-Subnet"
}
subnet_private_tags       = {
  "Name"  = "Exercise-4-Private-Subnet"
}
route_table_public_tags    = {
  "Name"  = "Exercise-4-Public-Route-Table"
}
route_table_private_tags    = {
  "Name"  = "Exercise-4-Private-Route-Table"
}
internet_gateway_tags    = {
  "Name"  = "Exercise-4-Internet_Gateway"
}
destination_cidr_block = "0.0.0.0/0"
from_port = "-1"
to_port = "-1"
protocol = "icmp"
sg_cidr_blocks = [ "0.0.0.0/0" ]
ami_id = "ami-0c02fb55956c7d316"
instance_type = "t2.micro"
key_name = "ec2_exercise_name"
map_public_ip_on_launch = true
security_group_tags    = {
  "Name"  = "Exercise-4-Security-Groups"
}
ec2_tags    = {
  "Name"  = "Exercise-4-EC2"
}