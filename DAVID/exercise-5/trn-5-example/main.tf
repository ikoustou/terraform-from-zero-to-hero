module "TRN-5-example" {
  source = "../"

  name = "trn-5-example"
  region = var.region

  vpc_cidr_block = var.vpc_cidr_block

  subnet_private_cidr_block = var.subnet_private_cidr_block
  subnet_private_name = var.subnet_private_name

  subnet_public_cidr_block = var.subnet_public_cidr_block
  subnet_public_name = var.subnet_public_name

  rt_private_name = var.rt_private_name

  rt_public_name = var.rt_public_name

  igw_name = var.igw_name

  destination_cidr_block = var.destination_cidr_block

  #SG ping public
  from_port_ping_public = var.from_port_ping_public
  to_port_ping_public = var.to_port_ping_public
  protocol_ping_public = var.protocol_ping_public
  cidr_blocks_ping_public = var.cidr_blocks_ping_public

  #SG ping private
  from_port_ping_private = var.from_port_ping_private
  to_port_ping_private = var.to_port_ping_private
  protocol_ping_private = var.protocol_ping_private
  cidr_blocks_ping_private = var.cidr_blocks_ping_private

  #SG ssh
  from_port_ssh = var.from_port_ssh
  to_port_ssh = var.to_port_ssh
  protocol_ssh = var.protocol_ssh
  cidr_blocks_ssh = var.cidr_blocks_ssh

  #ec2 public
  ami_id_public = var.ami_id_public
  instance_type_public = var.instance_type_public
  key_name_public = var.key_name_public

  #ec2 private
  ami_id_private = var.ami_id_private
  instance_type_private = var.instance_type_private
  key_name_private = var.key_name_private
}