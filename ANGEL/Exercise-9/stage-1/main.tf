module "stage_1" {
  source = "../"

  

  #EC2
  instance_type = var.instance_type
  my_count = var.my_count
  tags = var.tags
}
