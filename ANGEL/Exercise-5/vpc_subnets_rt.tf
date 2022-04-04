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
