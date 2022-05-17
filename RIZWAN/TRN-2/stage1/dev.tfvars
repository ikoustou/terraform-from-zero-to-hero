region = "us-east-1"

vpc_cidr_block = "10.0.0.0/16"
vpc_name = "stage1_vpc_1"
vpc_tags = {
  "Name"  = "stage1_vpc_1"
}

subnet_1_cidr_block = "10.0.0.0/24"
subnet_1_name = "stage1_subnet_1"
subnet_1_tags = {
  "Name"  = "stage1_subnet_1"
}

subnet_2_cidr_block = "10.0.1.0/24"
subnet_2_name = "stage1_subnet_2"
subnet_2_tags = {
  "Name"  = "stage1_subnet_2"
}

route_table_name = "stage1_route_table"
route_table_tags = {
  "Name"  = "stage1_route_table"
}