# Transit Gateways
module "tgw" {
  source          = "./modules/transit_gateway"

  amazon_side_asn = var.tgw_asn
  tags            = var.tgw_tags
}


# Transit Gateway Attachments
module "tgwa-1" {
  source             = "./modules/transit_gateway_attachment"

  subnet_ids         = [module.subnet1_pub.id]
  transit_gateway_id = module.tgw.id
  vpc_id             = module.vpc1.id
  tags               = var.tgwa-1_tags

  depends_on = [
    module.vpc1,
    module.subnet1_pub,
    module.tgw
  ]
}

module "tgwa-2" {
  source             = "./modules/transit_gateway_attachment"

  subnet_ids         = [module.subnet2_priv.id]
  transit_gateway_id = module.tgw.id
  vpc_id             = module.vpc2.id
  tags               = var.tgwa-2_tags

  depends_on = [
    module.vpc2,
    module.subnet2_priv,
    module.tgw
  ]
}


# Routes
module "tg-route1" {
  source                    = "./modules/route"

  route_table_id            = module.rt1-pub.id
  destination_cidr_block    = var.vpc2_dest_cidr_block
  transit_gateway_id        = module.tgw.id

  depends_on = [
    module.rt1-pub,
    module.tgw
  ]
}

module "tg-route2" {
  source                    = "./modules/route"

  route_table_id            = module.rt2-priv.id
  destination_cidr_block    = var.vpc1_dest_cidr_block
  transit_gateway_id        = module.tgw.id

  depends_on = [
    module.rt2-priv,
    module.tgw
  ]
}