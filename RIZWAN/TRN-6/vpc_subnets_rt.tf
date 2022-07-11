module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block
  tags = var.vpc_tags
}

module "subnet_public" {
  source = "./modules/subnet"

  vpc_id = module.vpc.instance.id
  subnet_cidr_block = var.subnet_public_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = var.subnet_public_tags
}

module "subnet_private" {
  source = "./modules/subnet"

  vpc_id =  module.vpc.instance.id
  subnet_cidr_block = var.subnet_private_cidr_block
  tags = var.subnet_private_tags
}

module "route_table_public" {
  source = "./modules/route_table"

  vpc_id =  module.vpc.instance.id
  tags = var.route_table_public_tags
}

module "route_table_private" {
  source = "./modules/route_table"

  vpc_id =  module.vpc.instance.id
  tags = var.route_table_private_tags
}

module "route_table_association_public" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_public.instance.id
  subnet_id = module.subnet_public.instance.id
}

module "route_table_association_private" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_private.instance.id
  subnet_id = module.subnet_private.instance.id
}

#vpc2
module "vpc2" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block2
  tags = var.vpc_tags
}

module "subnet_public2" {
  source = "./modules/subnet"

  vpc_id = module.vpc2.instance.id
  subnet_cidr_block = var.subnet_public_cidr_block2
  tags = var.subnet_public_tags
}

module "subnet_private2" {
  source = "./modules/subnet"

  vpc_id =  module.vpc2.instance.id
  subnet_cidr_block = var.subnet_private_cidr_block2
  tags = var.subnet_private_tags
}

module "route_table_public2" {
  source = "./modules/route_table"

  vpc_id =  module.vpc2.instance.id
  tags = var.route_table_public_tags
}

module "route_table_private2" {
  source = "./modules/route_table"

  vpc_id =  module.vpc2.instance.id
  tags = var.route_table_private_tags
}

module "route_table_association_public2" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_public2.instance.id
  subnet_id = module.subnet_public2.instance.id
}

module "route_table_association_private2" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_private2.instance.id
  subnet_id = module.subnet_private2.instance.id
}

module "vpc_peering" {
  source = "./modules/vpc_peering_connection"
  peer_vpc_id   = module.vpc.instance.id
  vpc_id        = module.vpc2.instance.id
  auto_accept   = true
  tags          = var.vpc_peering_tags
}

module "vpc_peering_accepter" {
  source = "./modules/vpc_peering_connection_accepter"
  vpc_peering_connection_id = module.vpc_peering.instance.id
  auto_accept   = true
  tags          = var.vpc_peering_accepter_tags
}

module "route_peering1" {
  source = "./modules/route"
  route_table_id = module.route_table_public.instance.id
  destination_cidr_block = var.vpc_cidr_block2
  vpc_peering_connection_id = module.vpc_peering.instance.id
}

module "route_peering2" {
  source = "./modules/route"
  route_table_id = module.route_table_public2.instance.id
  destination_cidr_block = var.vpc_cidr_block
  vpc_peering_connection_id = module.vpc_peering.instance.id
}

module "route_peering3" {
  source = "./modules/route"
  route_table_id = module.route_table_private.instance.id
  destination_cidr_block = var.vpc_cidr_block2
  vpc_peering_connection_id = module.vpc_peering.instance.id
}

module "route_peering4" {
  source = "./modules/route"
  route_table_id = module.route_table_private2.instance.id
  destination_cidr_block = var.vpc_cidr_block
  vpc_peering_connection_id = module.vpc_peering.instance.id
}