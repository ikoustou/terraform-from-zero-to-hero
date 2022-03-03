terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

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

  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.subnet_public_cidr_block
  subnet_name = var.subnet_public_name
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
  # try adding name/tag
}

module "rt_association_public" {
  source = "./modules/rt_association"

  subnet_id = module.subnet_public.subnet_id
  route_table_id = module.route_table_public.route_table_id
  # try adding name/tag
}

module "igw" {
  source = "./modules/igw"

  vpc_id = module.vpc.vpc_id
  igw_name = var.igw_name
}

module "route" {
  source = "./modules/route"

  route_table_id = module.route_table_public.route_table_id
  destination_cidr_block = var.destination_cidr_block
  gateway_id = module.igw.igw_id
}