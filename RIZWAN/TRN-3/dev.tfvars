region = "us-east-1"

vpc_cidr_block = "10.0.0.0/16"
vpc_tags       = {
  "Name" = "e3_vpc"
}

internet_gateway_tags = {
  "Name" = "e3_internet_gateway"
}

public_cidr_block  = "10.0.0.0/24"
public_subnet_tags = {
  "Name" = "e3_public_subnet"
}

rt-public_tags = {
  "Name" = "e3_public_route_table"
}

public_route_dest_cidr_block = "0.0.0.0/0"

private_cidr_block  = "10.0.1.0/24"
private_subnet_tags = {
  "Name" = "e3_private_subnet"
}

rt-private_tags = {
  "Name" = "e3_private_route_table"
}
