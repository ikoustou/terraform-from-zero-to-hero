module "example_1" {
  source     = "../.."

region    = var.region
cidr_list = var.cidr_list
vpc_tags  = var.vpc_tags

}