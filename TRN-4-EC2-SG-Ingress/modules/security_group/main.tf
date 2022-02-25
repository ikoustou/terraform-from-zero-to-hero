resource "aws_security_group" "inbound_allow_all_icmp" {
  name        = "inbound_allow_all_icmp"
  description = "inbound allow all icmp"
  vpc_id      = var.vpc_id

  ingress {
    description      = "Inbound traffic ping"
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
  }
}