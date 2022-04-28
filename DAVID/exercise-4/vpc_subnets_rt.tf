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