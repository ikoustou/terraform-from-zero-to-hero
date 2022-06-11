resource "aws_security_group" "allow_service" {
  # Do not give name and description argument if used inside modules. Otherwise you will not be able to create more than 1 SG in the same VPC
  # Let terraform to assign a random name
  # name        = "allow_service" 
  # description = "Allow  inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    # (change to whatever ports you need)
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = var.cidr_blocks # add your IP address here
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = var.tags
}