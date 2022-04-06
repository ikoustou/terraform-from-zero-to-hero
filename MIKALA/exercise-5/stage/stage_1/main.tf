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
    private_subnet_tags             = var.private_subnet_tags
    rt-private_tags                 = var.rt-private_tags
    internet_gateway_tags           = var.internet_gateway_tags
    public_route_dest_cidr_block    = var.public_route_dest_cidr_block
    sg_pub_icmp_name                = var.
    sg_pub_icmp_description         = var.
    in_pub_icmp_from_port           = var.
    in_pub_icmp_to_port             = var.
    in_pub_icmp_protocol            = var.
    in_pub_icmp_cidr_blocks         = var.
    sg_pub_icmp_tags                = var.
    sg_priv_icmp_name               = var.
    sg_priv_icmp_description        = var.
    in_priv_icmp_from_port          = var.
    in_priv_icmp_to_port            = var.
    in_priv_icmp_protocol           = var.
    in_priv_icmp_cidr_blocks        = var.
    sg_priv_icmp_tags               = var.
    sg_pub_ssh_name                 = var.
    sg_pub_ssh_description          = var.
    in_pub_ssh_from_port            = var.
    in_pub_ssh_to_port              = var.
    in_pub_ssh_protocol             = var.
    in_pub_ssh_cidr_blocks          = var.
    sg_pub_ssh_tags                 = var.
    i_public_type                   = var.
    i_public_key_name               = var.
    i_public_tags                   = var.
    i_private_type                  = var.
    i_private_key_name              = var.
    i_private_tags                  = var.
}