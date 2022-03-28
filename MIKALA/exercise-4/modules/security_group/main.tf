resource "aws_security_group" "main" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id
  ingress     = var.ingress
  egress      = var.egress
  tags        = var.tags
}