variable "instance_type" {
  type = string
  description = "instance type"
}

variable "key_name" {
  type = string
  default = null
  description = "key name"
}

variable "subnet_id" {
  type = string
  default = null
  description = "subnet id for ec2"
}

variable "vpc_security_group_ids" {
  type = list(string)
  default = null
  description = "ec2 security groups"
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}