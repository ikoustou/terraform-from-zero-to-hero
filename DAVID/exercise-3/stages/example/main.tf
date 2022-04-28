module "TRN-3-example" {
  source = "../../"

  region = var.region

  vpc_cidr_block = var.vpc_cidr_block

  subnet_private_cidr_block = var.subnet_private_cidr_block
  subnet_private_name = var.subnet_private_name

  subnet_public_cidr_block = var.subnet_public_cidr_block
  subnet_public_name = var.subnet_public_name

  rt_private_name = var.rt_private_name

  rt_public_name = var.rt_public_name

  igw_name = var.igw_name

  destination_cidr_block = var.destination_cidr_block
}