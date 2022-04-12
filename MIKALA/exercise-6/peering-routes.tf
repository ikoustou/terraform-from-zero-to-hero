# Peering Connection
module "vpc-pc" {
  source        = "./modules/vpc_peering_connection"

  peer_vpc_id   = aws_vpc.vpc2.id
  vpc_id        = aws_vpc.vpc1.id
  auto_accept   = var.auto_accept
  tags          = var.vpc-pc_tags
}


# Routes
module "vc-route1" {
  source                    = "./modules/route"

  route_table_id            = module.rt1-pub.id
  destination_cidr_block    = var.vc1_dest_cidr_block
  vpc_peering_connection_id = module.vpc-pc.id
}

module "vc-route2" {
  source                    = "./modules/route"

  route_table_id            = module.rt2-priv.id
  destination_cidr_block    = var.vc2_dest_cidr_block
  vpc_peering_connection_id = module.vpc-pc.id
}