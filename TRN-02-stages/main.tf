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

module "subnet1" {
  source = "./modules/subnet"

  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.subnet1_cidr_block
  subnet_name = var.subnet_name1
}

module "subnet2" {
  source = "./modules/subnet"

  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.subnet2_cidr_block
  subnet_name = var.subnet_name2
}

module "route_table" {
  source = "./modules/route_table"

  vpc_id = module.vpc.vpc_id
  rt_name = var.rt_name
}

module "rt_association_a" {
  source = "./modules/rt_association"

  subnet_id = module.subnet1.subnet_id
  route_table_id = module.route_table.route_table_id
  # try adding name/tag
}

module "rt_association_b" {
  source = "./modules/rt_association"

  subnet_id = module.subnet2.subnet_id
  route_table_id = module.route_table.route_table_id
  # try adding name/tag
}