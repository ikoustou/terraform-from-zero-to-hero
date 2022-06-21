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
  source                  = "./modules/vpc"
  count                   = length(var.cidr_list)

  cidr_block              = var.cidr_list[count.index]
  tags                    = var.vpc_tags
}