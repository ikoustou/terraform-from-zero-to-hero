module "ec2" {
  source = "./modules/ec2"

  instance_type = var.instance_type
  count = var.my_count
  tags = var.tags
}