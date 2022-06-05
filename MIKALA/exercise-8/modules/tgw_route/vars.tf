variable "destination_cidr_block" {
  type        = string
  description = "IPv4 or IPv6 RFC1924 CIDR used for destination matches. Routing decisions are based on the most specific match."
}

variable "transit_gateway_attachment_id" {
  type        = string
  description = "Identifier of EC2 Transit Gateway Attachment."
}

variable "transit_gateway_route_table_id" {
  type        = string
  description = "Identifier of EC2 Transit Gateway Route Table."
}