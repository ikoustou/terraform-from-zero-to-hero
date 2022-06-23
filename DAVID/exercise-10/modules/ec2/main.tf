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

resource "aws_instance" "web" {
  count         = var.create ? 1 : 0
  
  ami           = data.aws_ami.amazon.image_id
  instance_type = var.instance_type

  tags = {
    Name = "EC2 ${count.index}"
  }
}