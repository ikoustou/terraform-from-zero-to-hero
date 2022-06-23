module "vpc" {
  source = "./modules/vpc"

  count = length(var.cidr_blocks)
  vpc_cidr_block = var.cidr_blocks[count.index]
}