# VPCS
module "vpc1" {
  source     = "./modules/vpc"

  cidr_block = var.vpc1_cidr_block
  tags       = var.vpc1_tags
}

module "vpc2" {
  source     = "./modules/vpc"

  cidr_block = var.vpc2_cidr_block
  tags       = var.vpc2_tags
}


# Subnets
module "subnet1_pub" {
  source                  = "./modules/subnet"

  vpc_id                  = module.vpc1.id
  cidr_block              = var.sn1_pub_cidr_block
  map_public_ip_on_launch = var.public_map_public_ip_on_launch
  tags                    = var.sn1_pub_tags
}

module "subnet1_priv" {
  source                  = "./modules/subnet"

  vpc_id                  = module.vpc1.id
  cidr_block              = var.sn1_priv_cidr_block
  map_public_ip_on_launch = var.public_map_public_ip_on_launch
  tags                    = var.sn1_priv_tags
}

module "subnet2_pub" {
  source                  = "./modules/subnet"

  vpc_id                  = module.vpc2.id
  cidr_block              = var.sn2_pub_cidr_block
  map_public_ip_on_launch = var.public_map_public_ip_on_launch
  tags                    = var.sn2_pub_tags
}

module "subnet2_priv" {
  source                  = "./modules/subnet"

  vpc_id                  = module.vpc2.id
  cidr_block              = var.sn2_priv_cidr_block
  map_public_ip_on_launch = var.public_map_public_ip_on_launch
  tags                    = var.sn2_priv_tags
}


# Route Tables and RT Associations
module "rt1-pub" {
  source = "./modules/route_table"

  vpc_id = module.vpc1.id
  tags   = var.rt1-pub_tags
}

module "rt1-pub-rta" {
  source         = "./modules/route_table_association"

  subnet_id      = module.subnet1_pub.id
  route_table_id = module.rt1-pub.id
}

module "rt1-priv" {
  source = "./modules/route_table"

  vpc_id = module.vpc1.id
  tags   = var.rt1-priv_tags
}

module "rt1-priv-rta" {
  source         = "./modules/route_table_association"

  subnet_id      = module.subnet1_priv.id
  route_table_id = module.rt1-priv.id
}

module "rt2-pub" {
  source = "./modules/route_table"

  vpc_id = module.vpc2.id
  tags   = var.rt2-pub_tags
}

module "rt2-pub-rta" {
  source         = "./modules/route_table_association"

  subnet_id      = module.subnet2_pub.id
  route_table_id = module.rt2-pub.id
}

module "rt2-priv" {
  source = "./modules/route_table"

  vpc_id = module.vpc2.id
  tags   = var.rt2-priv_tags
}

module "rt2-priv-rta" {
  source         = "./modules/route_table_association"

  subnet_id      = module.subnet2_priv.id
  route_table_id = module.rt2-priv.id
}