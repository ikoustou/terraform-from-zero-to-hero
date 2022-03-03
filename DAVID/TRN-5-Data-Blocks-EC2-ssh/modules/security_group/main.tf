resource "aws_security_group" "security_group" {
  # name        = "inbound_allow_all_icmp"
  description = "security_group"
  vpc_id      = var.vpc_id

  ingress {
    description      = "security group"
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}