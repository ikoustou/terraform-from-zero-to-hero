resource "aws_subnet" "main" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block
  tags = var.tags
}