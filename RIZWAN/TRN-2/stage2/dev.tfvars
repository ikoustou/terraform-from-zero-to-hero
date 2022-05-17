region = "us-east-2"

vpc_cidr_block = "10.0.0.0/16"
vpc_name = "stage2_vpc_1"
vpc_tags = {
  "Name"  = "stage2_vpc_1"
}

subnet_1_cidr_block = "10.0.0.0/24"
subnet_1_name = "stage2_subnet_1"
subnet_1_tags = {
  "Name"  = "stage_2_subnet_1"
}

subnet_2_cidr_block = "10.0.1.0/24"
subnet_2_name = "stage2_subnet_2"
subnet_2_tags = {
  "Name"  = "stage2_subnet_2"
}

route_table_name = "stage2_route_table"
route_table_tags = {
  "Name"  = "stage2_route_table"
}