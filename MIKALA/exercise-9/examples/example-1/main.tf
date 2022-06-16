module "example_1" {
  source     = "../.."

region   = var.region
ec2_type = var.ec2_type
ec2_tags = var.ec2_tags

}