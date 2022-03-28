terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block
  tags = var.vpc_tags
}

module "subnet_public" {
  source = "./modules/subnet"

  vpc_id = module.vpc.instance.id
  subnet_cidr_block = var.subnet_public_cidr_block
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = var.subnet_public_tags
}

module "subnet_private" {
  source = "./modules/subnet"

  vpc_id =  module.vpc.instance.id
  subnet_cidr_block = var.subnet_private_cidr_block
  map_public_ip_on_launch = var.do_not_map_public_ip_on_launch
  tags = var.subnet_private_tags
}

module "route_table_public" {
  source = "./modules/route_table"

  vpc_id =  module.vpc.instance.id
  tags = var.route_table_public_tags
}

module "route_table_private" {
  source = "./modules/route_table"

  vpc_id =  module.vpc.instance.id
  tags = var.route_table_private_tags
}

module "route_table_association_public" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_public.instance.id
  subnet_id = module.subnet_public.instance.id
}

module "route_table_association_private" {
  source = "./modules/route_table_association"
  route_table_id = module.route_table_private.instance.id
  subnet_id = module.subnet_private.instance.id
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.instance.id
  tags = var.internet_gateway_tags
}

module "route" {
  source = "./modules/route"
  route_table_id = module.route_table_public.instance.id
  destination_cidr_block = var.destination_cidr_block
  gateway_id = module.internet_gateway.instance.id
}

module "security_group" {
  source = "./modules/security_group"

  vpc_id = module.vpc.instance.id
  from_port = var.from_port
  to_port = var.to_port
  protocol = var.protocol
  sg_cidr_blocks = var.sg_cidr_blocks
  tags = var.security_group_tags
}

module "ec2" {
  source = "./modules/ec2"

  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  subnet_id = module.subnet_public.instance.id
  vpc_security_group_ids = [module.security_group.instance.id]
  tags = var.ec2_tags
}
