variable "vpc_id" {
  description = "vpc id"
  type        = string
}

variable "from_port" {
  description = "(Required) The start port (or ICMP type number if protocol is icmp)"
  type = number
}

variable "to_port" {
  description = "(Required) The end port (or ICMP type number if protocol is icmp)"
  type = number
}

variable "protocol" {
  description = "(Required) -1 for all, tcp, udp, icmp, or icmpv6 "
  type = string
}


#--- Optional ----
variable "cidr_blocks" {
  type = list(string)
  default = null
}

variable "tags" {
  type    = map(string)
  default = null
}