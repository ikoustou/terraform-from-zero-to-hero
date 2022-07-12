data "aws_ami" "amazon_ami" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name = "owner-alias"
    values = ["amazon*"]
  }

  filter {
    name = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "web_instance_1" {
#  count = var.num_instances
  ami = data.aws_ami.amazon_ami.image_id
  instance_type = var.instance_type

  tags = {
    Name = "EC2 ${count.index} ${ami}"
  }
}