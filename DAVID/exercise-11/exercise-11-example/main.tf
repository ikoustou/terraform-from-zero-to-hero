module "vpc" {
  source = "../"

  cidr_blocks = var.cidr_blocks
}
