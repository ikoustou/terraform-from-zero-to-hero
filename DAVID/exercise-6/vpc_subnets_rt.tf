###
#VPC1
###

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
}

#private subnet
module "subnet_private" {
  source = "./modules/subnet"

  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.subnet_private_cidr_block
  subnet_name = var.subnet_private_name
}

#public subnet
module "subnet_public" {
  source = "./modules/subnet"

  vpc_id                  = module.vpc.vpc_id
  subnet_cidr_block       = var.subnet_public_cidr_block
  subnet_name             = var.subnet_public_name
  map_public_ip_on_launch = true
}

#private route table
module "route_table_private" {
  source = "./modules/route_table"

  vpc_id = module.vpc.vpc_id
  rt_name = var.rt_private_name
}

#public route table
module "route_table_public" {
  source = "./modules/route_table"

  vpc_id = module.vpc.vpc_id
  rt_name = var.rt_public_name
}

module "rt_association_private" {
  source = "./modules/rt_association"

  subnet_id = module.subnet_private.subnet_id
  route_table_id = module.route_table_private.route_table_id
}

module "rt_association_public" {
  source = "./modules/rt_association"

  subnet_id = module.subnet_public.subnet_id
  route_table_id = module.route_table_public.route_table_id
}

###
#VPC2
###

module "vpc_2" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block_2
}

#private subnet
module "subnet_private_2" {
  source = "./modules/subnet"

  vpc_id = module.vpc_2.vpc_id
  subnet_cidr_block = var.subnet_private_cidr_block_2
  subnet_name = var.subnet_private_name_2
}

#public subnet
module "subnet_public_2" {
  source = "./modules/subnet"

  vpc_id                  = module.vpc_2.vpc_id
  subnet_cidr_block       = var.subnet_public_cidr_block_2
  subnet_name             = var.subnet_public_name_2
  map_public_ip_on_launch = true
}

#private route table
module "route_table_private_2" {
  source = "./modules/route_table"

  vpc_id = module.vpc_2.vpc_id
  rt_name = var.rt_private_name_2
}

#public route table
module "route_table_public_2" {
  source = "./modules/route_table"

  vpc_id = module.vpc_2.vpc_id
  rt_name = var.rt_public_name_2
}

module "rt_association_private_2" {
  source = "./modules/rt_association"

  subnet_id = module.subnet_private_2.subnet_id
  route_table_id = module.route_table_private_2.route_table_id
}

module "rt_association_public_2" {
  source = "./modules/rt_association"

  subnet_id = module.subnet_public_2.subnet_id
  route_table_id = module.route_table_public_2.route_table_id
}

###
#Peering related
###

module "vpc_peering" {
  source = "./modules/vpc_peering_connection"
  peer_vpc_id   = module.vpc.vpc_id
  vpc_id        = module.vpc_2.vpc_id
}

module "vpc_peering_accepter" {
  source = "./modules/vpc_peering_connection_accepter"
  vpc_peering_connection_id = module.vpc_peering.connection_id
}

module "public_route_1" {
  source = "./modules/route"
  route_table_id = module.route_table_public.route_table_id
  destination_cidr_block = var.vpc_cidr_block_2
  vpc_peering_connection_id = module.vpc_peering.connection_id
}

module "public_route_2" {
  source = "./modules/route"
  route_table_id = module.route_table_public_2.route_table_id
  destination_cidr_block = var.vpc_cidr_block
  vpc_peering_connection_id = module.vpc_peering.connection_id
}

module "private_route_1" {
  source = "./modules/route"
  route_table_id = module.route_table_private.route_table_id
  destination_cidr_block = var.vpc_cidr_block_2
  vpc_peering_connection_id = module.vpc_peering.connection_id
}

module "private_route_2" {
  source = "./modules/route"
  route_table_id = module.route_table_private_2.route_table_id
  destination_cidr_block = var.vpc_cidr_block
  vpc_peering_connection_id = module.vpc_peering.connection_id
}