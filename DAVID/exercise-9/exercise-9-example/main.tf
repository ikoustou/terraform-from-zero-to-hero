module "n-ec2-instances" {
  source = "../"

  ami_id = var.ami_id
  instance_type = var.instance_type
  n_instances = var.n_instances
}