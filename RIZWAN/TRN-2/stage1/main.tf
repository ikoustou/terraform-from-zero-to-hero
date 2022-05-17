module "stage_1" {
    source     = "../"

    region              = var.region
    vpc_cidr_block      = var.vpc_cidr_block
    vpc_name            = var.vpc_name
    vpc_tags            = var.vpc_tags
    subnet_1_cidr_block = var.subnet_1_cidr_block
    subnet_1_name       = var.subnet_1_name
    subnet_1_tags       = var.subnet_1_tags
    subnet_2_cidr_block = var.subnet_2_cidr_block
    subnet_2_name       = var.subnet_1_name
    subnet_2_tags       = var.subnet_2_tags
    route_table_name    = var.route_table_name
    route_table_tags    = var.route_table_tags
}