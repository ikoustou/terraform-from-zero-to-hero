module "vpc" {
  source = "./modules/vpc"
  for_each = var.vpc_data
  
  vpc_cidr_block = each.value.cidr
  tags = {
    Name = each.value.name
  }
}