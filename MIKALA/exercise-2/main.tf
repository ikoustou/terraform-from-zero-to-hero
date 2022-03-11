terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.00"
    }
  }
  required_version = ">= 0.14.9"
}

module "vpc" {
    source     = "./modules/vpc"

    cidr_block = var.vpc_cidr_block
    tags       = var.vpc_tags
}

module "subnet_1" {
    source = "./modules/subnet"

    vpc_id     = module.vpc.id
    cidr_block = var.subnet_1_cidr_block
    tags       = var.subnet_1_tags
}

module "subnet_2" {
    source = "./modules/subnet"

    vpc_id     = module.vpc.id
    cidr_block = var.subnet_2_cidr_block
    tags       = var.subnet_2_tags
}

module "route_table" {
    source = "./modules/route_table"

    vpc_id = module.vpc.id
    tags   = var.route_table_tags
}

module "route_table_association_1" {
    source = "./modules/route_table_association"

    subnet_id      = module.subnet_1.id
    route_table_id = module.route_table.id
}

module "route_table_association_2" {
    source = "./modules/route_table_association"

    subnet_id      = module.subnet_2.id
    route_table_id = module.route_table.id
}