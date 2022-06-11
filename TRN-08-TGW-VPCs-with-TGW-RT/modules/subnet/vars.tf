variable "vpc_id" {
  description = "VPC ID where the subnet belongs"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR Block of the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone of the subnet"
  type        = string
}

# --- Optional  ---
variable "tags" {
  type    = map(string)
  default = null
}
variable "map_public_ip_on_launch" {
  type    = string
  default = null
}
