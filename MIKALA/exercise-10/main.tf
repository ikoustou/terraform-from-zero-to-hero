terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.00"
    }
  }
  required_version = ">= 0.14.9"
}

module "ec2_instance" {
  source                  = "./modules/instance"
  count                   = var.create_ec2 ? 1 : 0

  instance_type           = var.ec2_type
  tags                    = var.ec2_tags
}