# Transit Gateways
module "tgw" {
  source          = "./modules/transit_gateway"

  amazon_side_asn                 = var.tgw_asn
  default_route_table_association = var.default_rt_assoc
  default_route_table_propagation = var.default_rt_propa
  tags                            = var.tgw_tags
}


# Transit Gateway VPC Attachments
module "tgw_attach_1" {
  source                                          = "./modules/tgw_vpc_attachment"

  subnet_ids                                      = [module.subnet1_pub.id,module.subnet1_priv.id]
  transit_gateway_id                              = module.tgw.id
  vpc_id                                          = module.vpc1.id
  transit_gateway_default_route_table_association = var.tgw_default_rt_assoc
  transit_gateway_default_route_table_propagation = var.tgw_default_rt_propa
  tags                                            = var.tgwa-1_tags

  depends_on = [
    module.vpc1,
    module.subnet1_pub,
    module.tgw
  ]
}

module "tgw_attach_2" {
  source                                          = "./modules/tgw_vpc_attachment"

  subnet_ids                                      = [module.subnet2_pub.id,module.subnet2_priv.id]
  transit_gateway_id                              = module.tgw.id
  vpc_id                                          = module.vpc2.id
  transit_gateway_default_route_table_association = var.tgw_default_rt_assoc
  transit_gateway_default_route_table_propagation = var.tgw_default_rt_propa
  tags                                            = var.tgwa-2_tags

  depends_on = [
    module.vpc2,
    module.subnet2_priv,
    module.tgw
  ]
}


# TGW Routes Tables
module "tgw_rt_1" {
  source                    = "./modules/tgw_route_table"

  transit_gateway_id = module.tgw.id
  tags               = var.tgw_rt_1_tags

  depends_on = [
    module.tgw
  ]
}

module "tgw_rt_assoc_1" {
  source                         = "./modules/tgw_rt_association"

  transit_gateway_attachment_id  = module.tgw_attach_1.id
  transit_gateway_route_table_id = module.tgw_rt_1.id

  depends_on = [
    module.tgw_attach_1,
    module.tgw_rt_1
  ]
}

module "tgw_rt_2" {
  source                    = "./modules/tgw_route_table"

  transit_gateway_id = module.tgw.id
  tags               = var.tgw_rt_2_tags

  depends_on = [
    module.tgw
  ]
}

module "tgw_rt_assoc_2" {
  source                         = "./modules/tgw_rt_association"

  transit_gateway_attachment_id  = module.tgw_attach_2.id
  transit_gateway_route_table_id = module.tgw_rt_2.id

  depends_on = [
    module.tgw_attach_2,
    module.tgw_rt_2
  ]
}

# Routes
module "vpc1_rt2-pub_route" {
  source                 = "./modules/route"

  route_table_id         = module.rt2-pub.id
  destination_cidr_block = var.vpc1_cidr_block
  transit_gateway_id     = module.tgw.id

  depends_on = [
    module.rt2-pub,
    module.tgw.id
  ]
}

module "vpc1_rt2-priv_route" {
  source                 = "./modules/route"

  route_table_id         = module.rt2-priv.id
  destination_cidr_block = var.vpc1_cidr_block
  transit_gateway_id     = module.tgw.id

  depends_on = [
    module.rt2-priv,
    module.tgw.id
  ]
}

module "vpc2_rt1-pub_route" {
  source                 = "./modules/route"

  route_table_id         = module.rt1-pub.id
  destination_cidr_block = var.vpc2_cidr_block
  transit_gateway_id     = module.tgw.id

  depends_on = [
    module.rt1-pub,
    module.tgw.id
  ]
}

module "vpc2_rt1-priv_route" {
  source                 = "./modules/route"

  route_table_id         = module.rt1-priv.id
  destination_cidr_block = var.vpc2_cidr_block
  transit_gateway_id     = module.tgw.id

  depends_on = [
    module.rt1-priv,
    module.tgw.id
  ]
}

module "tgw_rt_propa_1" {
  source                         = "./modules/tgw_rt_propagation"

  transit_gateway_attachment_id  = module.tgw_attach_2.id
  transit_gateway_route_table_id = module.tgw_rt_1.id

  depends_on = [
    module.tgw_attach_2,
    module.tgw_rt_1
  ]
}

module "tgw_rt_propa_2" {
  source                         = "./modules/tgw_rt_propagation"

  transit_gateway_attachment_id  = module.tgw_attach_1.id
  transit_gateway_route_table_id = module.tgw_rt_2.id

  depends_on = [
    module.tgw_attach_1,
    module.tgw_rt_2
  ]
}
