module "ec2" {
  source = "./modules/ec2"

  instance_type = var.instance_type
  count = var.create_instance ? 1: 0
  tags = var.tags
}