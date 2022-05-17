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
    name       = var.vpc_name
    tags       = var.vpc_tags
}

module "subnet_1" {
    source     = "./modules/subnet"
    vpc_id     = module.vpc.id
    cidr_block = var.subnet_1_cidr_block
    name       = var.subnet_1_name
    tags       = var.subnet_1_tags
}

module "subnet_2" {
    source     = "./modules/subnet"
    vpc_id     = module.vpc.id
    cidr_block = var.subnet_2_cidr_block
    name       = var.subnet_2_name
    tags       = var.subnet_2_tags
}

module "routetable" {
    source = "./modules/routetable"
    vpc_id = module.vpc.id
    name   = var.route_table_name
    tags   = var.route_table_tags
}

module "routetable_association_1" {
    source         = "./modules/routetable_assoc"
    subnet_id      = module.subnet_1.id
    route_table_id = module.route_table.id
    name           = var.route_table_association_1_name
}

module "routetable_association_2" {
    source         = "./modules/routetable_assoc"
    subnet_id      = module.subnet_2.id
    route_table_id = module.route_table.id
    name           = var.route_table_association_2_name
}
