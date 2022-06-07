variable "vpc_id" {
  type        = string
  description = "The VPC ID to create in."
}

variable "cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the subnet."
}

variable "map_public_ip_on_launch" {
  default     = null
  type        = bool
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

variable "availability_zone" {
  default     = null
  type        = string
  description = "AZ for the subnet."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}