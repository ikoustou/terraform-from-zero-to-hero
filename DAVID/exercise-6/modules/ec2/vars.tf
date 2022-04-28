variable "ami_id" {
  type = string
  description = "for specfic ami id, default is from data block"
  default = null
}

variable "instance_type" {
  type = string
  description = "instance type"
}

variable "key_name" {
  type = string
  description = "key-pair key name"
}

variable "subnet_id" {
  type = string
  description = "VPC Subnet ID to launch in"
}

variable "vpc_security_group_ids" {
  type = list(string)
  description = "A list of security group IDs to associate with."
}