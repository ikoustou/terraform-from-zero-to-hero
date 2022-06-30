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
  for_each                = var.vpc_data

  cidr_block              = each.value.cidr
  tags                    = {
    "Name" = "exercise-12_${each.value.name}"
  }
}