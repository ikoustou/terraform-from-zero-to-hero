module "ec2-instance" {
  source = "../"

  ami_id = var.ami_id
  instance_type = var.instance_type
  create = var.create
}