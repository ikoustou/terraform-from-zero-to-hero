variable "instance_type" {
  description = "ec2 instance type"
  type        = string
}

variable "key_name" {
  description = "ec2 key name"
  type        = string
}
#--- OPTIONAL VARIABLES  ---
variable "subnet_id" {
  type    = string
  default = null
}
variable "vpc_security_group_ids" {
  type    = list(string)
  default = null
}
variable "tags" {
  type    = map(string)
  default = null
}

