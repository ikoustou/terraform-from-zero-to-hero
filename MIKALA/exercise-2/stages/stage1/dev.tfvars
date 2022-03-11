region = "us-east-2"

vpc_cidr_block = "10.0.0.0/16"
vpc_tags = {
  "Name"  = "e2_stage_2_vpc"
}

subnet_1_cidr_block = "10.0.0.0/24"
subnet_1_tags = {
  "Name"  = "e2_stage_2_subnet_1"
}

subnet_2_cidr_block = "10.0.1.0/24"
subnet_2_tags = {
  "Name"  = "e2_stage_2_subnet_2"
}

route_table_tags = {
  "Name"  = "e2_stage_2_route_table"
}