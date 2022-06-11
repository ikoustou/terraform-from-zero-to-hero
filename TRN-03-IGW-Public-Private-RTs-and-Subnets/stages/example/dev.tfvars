region = "us-east-1"

#vpc
vpc_cidr_block = "10.0.0.0/16"

#private subnet
subnet_private_cidr_block = "10.0.0.0/24"
subnet_private_name = "TRN-3-private-subnet"

#public subnet
subnet_public_cidr_block = "10.0.1.0/24"
subnet_public_name = "TRN-3-public-subnet"

#private route table
rt_private_name = "TRN-3-rt-private"

#public route table
rt_public_name = "TRN-3-rt-public"

#igw
igw_name = "TRN-3-igw"

#route
destination_cidr_block = "0.0.0.0/0"