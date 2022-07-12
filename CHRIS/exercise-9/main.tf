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

resource "aws_default_vpc" "defalt_vpc_1" {
  cidr_block = "10.0.0.16"
#  force_destroy = true
}

module "EC2" {
  source = "./modules/EC2"
  count = var.num_instances
#  ami = data.aws_ami.amazon_ami.image_id
  instance_type = var.instance_type
}