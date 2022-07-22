resource "aws_security_group" "security_group" {
  description = "manages inbound traffic"
  vpc_id      = var.vpc_id
  ingress {
    description      = "manages inbound traffic"
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.sg_cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = var.tags
}