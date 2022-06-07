variable "name" {
  type        = string
  description = "Name of the security group."
}

variable "description" {
  type        = string
  description = "Security group description."
}

variable "vpc_id" {
  type        = string
  description = "VPC ID."
}

variable "in_from_port" {
  type        = number
  description = "Start port."
}

variable "in_to_port" {
  type        = number
  description = "End range port."
}

variable "in_protocol" {
  type        = string
  description = "Protocol."
}

variable "in_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}