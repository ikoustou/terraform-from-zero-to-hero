resource "aws_security_group" "main" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id
  ingress {
    from_port        = var.in_from_port
    to_port          = var.in_to_port
    protocol         = var.in_protocol
    cidr_blocks      = var.in_cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  tags        = var.tags
}