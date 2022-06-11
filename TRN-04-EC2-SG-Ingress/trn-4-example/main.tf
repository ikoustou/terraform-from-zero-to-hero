module "TRN-4-example" {
  source = "../"

  name = "trn-4-example"
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

  #SG
  from_port = var.from_port
  to_port = var.to_port
  protocol = var.protocol
  cidr_blocks = var.cidr_blocks

  #ec2
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
}