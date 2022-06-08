terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region = var.region
}

module "VPC_1" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block
}

module "SUBNET_1" {
  source = "./modules/subnet"
  cidr_block = var.subnet_1_cidr
  vpc_id = module.VPC_1.aws_vpc_output.id
}

module "SUBNET_2" {
  source = "./modules/subnet"
  cidr_block = var.subnet_2_cidr
  vpc_id = module.VPC_1.aws_vpc_output.id
}

module "ROUTE_TABLE_1" {
  source = "./modules/route_table"
  vpc_id = module.VPC_1.aws_vpc_output.id
}

module "ROUTE_TABLE_ACCOC_1" {
  source = "./modules/route_table_assoc"
  subnet_id = module.SUBNET_1.aws_subnet_output.id
  route_table_id = module.ROUTE_TABLE_1.aws_route_table_1_output.id
}

module "ROUTE_TABLE_ACCOC_2" {
  source = "./modules/route_table_assoc"
  subnet_id = module.SUBNET_2.aws_subnet_output.id
  route_table_id = module.ROUTE_TABLE_1.aws_route_table_1_output.id
}