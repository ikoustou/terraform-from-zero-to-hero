data "aws_ami" "amazon" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]  
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.amazon.image_id 
  instance_type           = var.instance_type 
  key_name                = var.key_name
  subnet_id               = var.subnet_id
  vpc_security_group_ids  = var.vpc_security_group_ids
}