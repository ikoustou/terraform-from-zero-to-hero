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
    source     = "../.."

    vpc_cidr_block = var.vpc_cidr_block
    vpc_tags       = var.vpc_tags
}

module "subnet_1" {
    source = "../.."

    vpc_id              = module.vpc.id
    subnet_1_cidr_block = var.subnet_1_cidr_block
    subnet_1_tags       = var.subnet_1_tags
}

module "subnet_2" {
    source = "../.."

    vpc_id              = module.vpc.id
    subnet_2_cidr_block = var.subnet_2_cidr_block
    subnet_2_tags       = var.subnet_2_tags
}

module "route_table" {
    source = "../.."

    vpc_id           = module.vpc.id
    route_table_tags = var.route_table_tags
}

module "route_table_association_1" {
    source = "../.."

    subnet_id      = module.subnet_1.id
    route_table_id = module.route_table.id
}

module "route_table_association_2" {
    source = "../.."

    subnet_id      = module.subnet_2.id
    route_table_id = module.route_table.id
}