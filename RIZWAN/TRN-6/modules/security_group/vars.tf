variable "vpc_id" {
  type = string
  description = "vpc id"
}

variable "from_port" {
  type = string
  description = "security group from port"
}

variable "to_port" {
  type = string
  description = "security group to port"
}

variable "protocol" {
  type = string
  description = "security group protocol"
}

variable "sg_cidr_blocks" {
  type = list(string)
  description = "List of CIDR blocks."
}

variable "tags" {
  type        = map
  description = "Tags for AWS Resource"
}
