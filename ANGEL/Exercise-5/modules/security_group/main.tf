resource "aws_security_group" "security_group" {
  name        = "allow_icmp"
  description = "manages inbound traffic"
  vpc_id      = var.vpc_id
  ingress {
    description      = "manages inbound traffic"
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.sg_cidr_blocks
  }

  tags = var.tags
}