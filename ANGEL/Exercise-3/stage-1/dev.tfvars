region = "us-east-1"
vpc_cidr_block = "10.0.0.0/16"
subnet_public_cidr_block = "10.0.0.0/24"
subnet_private_cidr_block = "10.0.1.0/24"
vpc_tags            = {
  "Name"  = "Exercise-3-VPC"
}
subnet_public_tags       = {
  "Name"  = "Exercise-3-Public-Subnet"
}
subnet_private_tags       = {
  "Name"  = "Exercise-3-Private-Subnet"
}
route_table_public_tags    = {
  "Name"  = "Exercise-3-Public-Route-Table"
}
route_table_private_tags    = {
  "Name"  = "Exercise-3-Private-Route-Table"
}
internet_gateway_tags    = {
  "Name"  = "Exercise-3-Internet_Gateway"
}
destination_cidr_block = "0.0.0.0/0"