variable "instance_type" {
  type = string
  description = "instance type"
}

variable "key_name" {
  type = string
  description = "key name"
}

variable "subnet_id" {
  type = string
  description = "subnet id for ec2"
}

variable "vpc_security_group_ids" {
  type = list(string)
  description = "ec2 security groups"
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}