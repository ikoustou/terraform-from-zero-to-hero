variable "vpc_id" {
  type = string
  description = "vpc id"
}

variable "from_port" {
  type = string
  description = "from_port / icmp type for ping"
}

variable "to_port" {
  type = string
  description = "from_port / icmp code for ping"
}

variable "protocol" {
  type = string
  description = "protocol"
}

variable "cidr_blocks" {
  type = list(string)
  description = "List of CIDR blocks."
}