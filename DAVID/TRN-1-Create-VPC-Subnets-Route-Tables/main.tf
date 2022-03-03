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

resource "aws_route_table" "TRN-1-rt" {
  vpc_id = module.vpc.vpc_id

  route = []

  tags = {
    Name = "TRN-1-rt"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = module.subnet1.subnet_id
  route_table_id = aws_route_table.TRN-1-rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = module.subnet2.subnet_id
  route_table_id = aws_route_table.TRN-1-rt.id
}