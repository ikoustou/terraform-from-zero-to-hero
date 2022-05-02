# Peering Connection
module "vpc-pc" {
  source        = "./modules/peering_connection"

  peer_vpc_id   = module.vpc2.id
  vpc_id        = module.vpc1.id
  auto_accept   = var.auto_accept
  tags          = var.vpc-pc_tags

  depends_on = [
    module.vpc2,
    module.vpc1
  ]
}


# Routes
module "vc-route1" {
  source                    = "./modules/route"

  route_table_id            = module.rt1-pub.id
  destination_cidr_block    = var.vc1_dest_cidr_block
  vpc_peering_connection_id = module.vpc-pc.id

  depends_on = [
    module.rt1-pub,
    module.vpc-pc
  ]
}

module "vc-route2" {
  source                    = "./modules/route"

  route_table_id            = module.rt2-priv.id
  destination_cidr_block    = var.vc2_dest_cidr_block
  vpc_peering_connection_id = module.vpc-pc.id

  depends_on = [
    module.rt2-priv,
    module.vpc-pc
  ]
}