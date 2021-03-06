module "stage_1" {
    source     = "../.."

    region                          = var.region
    vpc_cidr_block                  = var.vpc_cidr_block
    vpc_tags                        = var.vpc_tags
    public_cidr_block               = var.public_cidr_block
    public_map_public_ip_on_launch  = var.public_map_public_ip_on_launch
    public_subnet_tags              = var.public_subnet_tags
    rt-public_tags                  = var.rt-public_tags
    private_cidr_block              = var.private_cidr_block
    private_map_public_ip_on_launch = var.private_map_public_ip_on_launch
    private_subnet_tags             = var.private_subnet_tags
    rt-private_tags                 = var.rt-private_tags
    internet_gateway_tags           = var.internet_gateway_tags
    public_route_dest_cidr_block    = var.public_route_dest_cidr_block
    sg_name                         = var.sg_name
    sg_description                  = var.sg_description
    in_from_port                    = var.in_from_port
    in_to_port                      = var.in_to_port
    in_protocol                     = var.in_protocol
    in_cidr_blocks                  = var.in_cidr_blocks
    sg_tags                         = var.sg_tags
    ami                             = var.ami
    instance_type                   = var.instance_type
    key_name                        = var.key_name
    instance_tags                   = var.instance_tags
}