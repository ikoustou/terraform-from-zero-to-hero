module "vpc_ohio" {
  source = "../../"

  region             = var.region
  vpc_cidr_block     = var.vpc_cidr_block
  subnet1_cidr_block = var.subnet1_cidr_block
  subnet_name1       = var.subnet_name1
  subnet2_cidr_block = var.subnet2_cidr_block
  subnet_name2       = var.subnet_name2
  rt_name            = var.rt_name
}