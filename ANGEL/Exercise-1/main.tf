terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

module "vpc_1" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block
}

module "subnet_1" {
  source = "./modules/subnet"

  vpc_id = module.vpc_1.instance.id
  subnet_cidr_block = var.subnet_1_cidr_block
}

module "subnet_2" {
  source = "./modules/subnet"

  vpc_id =  module.vpc_1.instance.id
  subnet_cidr_block = var.subnet_2_cidr_block

}

module "route_table_1" {
  source = "./modules/route_table"

  vpc_id =  module.vpc_1.instance.id
}

module "route_table_association_1" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_1.instance.id
  subnet_id = module.subnet_1.instance.id
}

module "route_table_association_2" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_1.instance.id
  subnet_id = module.subnet_2.instance.id
}

