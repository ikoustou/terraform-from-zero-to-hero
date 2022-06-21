module "stage_1" {
  source = "../"

  cidr_blocks = var.cidr_blocks
  tags = var.tags
}
