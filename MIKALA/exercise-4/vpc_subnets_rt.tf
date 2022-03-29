module "vpc" {
  source     = "./modules/vpc"

  cidr_block = var.vpc_cidr_block
  tags       = var.vpc_tags
}

module "public" {
  source                  = "./modules/subnet"

  vpc_id                  = module.vpc.id
  cidr_block              = var.public_cidr_block
  map_public_ip_on_launch = var.public_map_public_ip_on_launch
  tags                    = var.public_subnet_tags
}

module "rt-public" {
  source = "./modules/route_table"

  vpc_id = module.vpc.id
  tags   = var.rt-public_tags
}

module "rt-public_association" {
  source         = "./modules/route_table_association"

  subnet_id      = module.public.id
  route_table_id = module.rt-public.id
}

module "private" {
  source                   = "./modules/subnet"

  vpc_id                   = module.vpc.id
  cidr_block               = var.private_cidr_block
  pmap_public_ip_on_launch = private_map_public_ip_on_launch
  tags                     = var.private_subnet_tags
}

module "rt-private" {
  source = "./modules/route_table"

  vpc_id = module.vpc.id
  tags   = var.rt-private_tags
}

module "rt-private_association" {
  source         = "./modules/route_table_association"

  subnet_id      = module.private.id
  route_table_id = module.rt-private.id
}