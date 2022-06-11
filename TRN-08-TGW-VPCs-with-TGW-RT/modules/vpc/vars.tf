variable "vpc_cidr_block" {
  description = "the CIDR Block of the vpc"
  type        = string
}

variable "enable_dns_hostnames" {
  description = "enable_dns_hostnames"
  type        = bool
  default = null
}