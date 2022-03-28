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

variable "ingress" {
  type        = map
  description = "Configuration block for ingress rules."
}

variable "egress" {
  type        = map
  description = "Configuration block for egress rules."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}