variable "subnet_cidr_block" {
  type = string
  description = "CIDR of the Subnet"
}

variable "vpc_id" {
  type = string
  description = "VPC id to associate with subnet"
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}

variable "map_public_ip_on_launch" {
  type = bool
  description = "Used to decide if a public ip is assigned to instances in the subnet"
}