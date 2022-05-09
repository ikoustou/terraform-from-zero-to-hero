resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id
  tags   = var.tags
}