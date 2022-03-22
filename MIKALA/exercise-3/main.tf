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

module "internet_gateway" {
  source = "./modules/internet_gateway"

  vpc_id = module.vpc.id
  tags   = var.internet_gateway_tags
}

module "public" {
  source     = "./modules/subnet"

  vpc_id     = module.vpc.id
  cidr_block = var.public_cidr_block
  tags       = var.public_subnet_tags
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

module "route" {
  source                 = "./modules/route"

  route_table_id         = module.rt-public.id
  destination_cidr_block = var.public_route_dest_cidr_block
  gateway_id             = module.internet_gateway.id
}

module "private" {
  source     = "./modules/subnet"

  vpc_id     = module.vpc.id
  cidr_block = var.private_cidr_block
  tags       = var.private_subnet_tags
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