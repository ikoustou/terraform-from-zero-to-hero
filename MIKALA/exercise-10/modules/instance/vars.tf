variable "instance_type" {
  type        = string
  description = "The instance type to use for the instance."
}

variable "key_name" {
  type        = string
  default     = null
  description = "Key name of the Key Pair to use for the instance."
}

variable "subnet_id" {
  type        = string
  default     = null
  description = "VPC Subnet ID to launch in."
}

variable "vpc_security_group_ids" {
  type        = list(string)
  default     = null
  description = "A list of security group IDs to associate with."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}