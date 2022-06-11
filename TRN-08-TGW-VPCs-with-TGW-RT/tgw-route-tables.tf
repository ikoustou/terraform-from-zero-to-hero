# --- TGW-Route-Table-VPC1  ---
module "TGW-RT-VPC1" {
  source = "./modules/tgw_route_table"

  transit_gateway_id = module.tgw.tgwid
  tags               = var.tgw_rt_vpc1_tags
}

# association with TGW-VPC1 attachment
module "TGW-RT-VPC1-Association" {
  source = "./modules/tgw_route_table_association"

  transit_gateway_attachment_id  = module.tgw_vpc1_attach_virginia.tgwattachvpcid
  transit_gateway_route_table_id = module.TGW-RT-VPC1.tgwroutetableid

  depends_on = [
    module.tgw_vpc1_attach_virginia,
    module.TGW-RT-VPC1
  ]
}

# route to vpc2 CIDR with the help of propagation
module "TGW-RT-VPC1-propagation-to-VPC2" {
  source = "./modules/tgw_route_table_propagation"
  
  transit_gateway_route_table_id = module.TGW-RT-VPC1.tgwroutetableid
  transit_gateway_attachment_id  = module.tgw_vpc2_attach_virginia.tgwattachvpcid # VPC2 attachment
  
  depends_on = [
    module.tgw_vpc2_attach_virginia,
    module.TGW-RT-VPC1
  ]
}

###############################################################
# --- TGW-Route-Table-VPC2  ---
module "TGW-RT-VPC2" {
  source = "./modules/tgw_route_table"

  transit_gateway_id = module.tgw.tgwid
  tags               = var.tgw_rt_vpc2_tags
}

# association with TGW-VPC2 attachment
module "TGW-RT-VPC2-Association" {
  source = "./modules/tgw_route_table_association"

  transit_gateway_attachment_id  = module.tgw_vpc2_attach_virginia.tgwattachvpcid
  transit_gateway_route_table_id = module.TGW-RT-VPC2.tgwroutetableid

  depends_on = [
    module.tgw_vpc2_attach_virginia,
    module.TGW-RT-VPC2
  ]
}

# route to vpc1 CIDR with the help of propagation
module "TGW-RT-VPC2-propagation-to-VPC1" {
  source = "./modules/tgw_route_table_propagation"
  
  transit_gateway_route_table_id = module.TGW-RT-VPC2.tgwroutetableid
  transit_gateway_attachment_id  = module.tgw_vpc1_attach_virginia.tgwattachvpcid # VPC1 attachment
  
  depends_on = [
    module.tgw_vpc1_attach_virginia,
    module.TGW-RT-VPC2
  ]
}
