module "stage_1" {
  source = "../"

  #EC2
  instance_type = var.instance_type
  create_instance = var.create_instance
  tags = var.tags
}
