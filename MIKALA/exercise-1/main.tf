terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.00"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

module "vpc" {
    source = "./modules/vpc"

    cidr_block = var.vpc_cidr_block
    name       = var.vpc_name
}

module "subnet_1" {
    source = "./modules/subnet"

    vpc_id     = module.vpc.id
    cidr_block = var.subnet_1_cidr_block
    name       = var.subnet_1_name
}

module "subnet_2" {
    source = "./modules/subnet"

    vpc_id     = module.vpc.id
    cidr_block = var.subnet_2_cidr_block
    name       = var.subnet_2_name
}

module "route_table" {
    source = "./modules/route_table"

    vpc_id = module.vpc.id
    name   = var.route_table_name
}

module "route_table_association_1" {
    source = "./modules/route_table_association"

    subnet_id      = module.subnet_1.id
    route_table_id = module.route_table.id
    name           = var.route_table_association_1_name
}

module "route_table_association_2" {
    source = "./modules/route_table_association"

    subnet_id      = module.subnet_2.id
    route_table_id = module.route_table.id
    name           = var.route_table_association_2_name
}
