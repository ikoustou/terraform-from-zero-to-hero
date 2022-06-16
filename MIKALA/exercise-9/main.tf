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
  count                   = 4

  instance_type           = var.ec2_type
  tags                    = var.ec2_tags
}