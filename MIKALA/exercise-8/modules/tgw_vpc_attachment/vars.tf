variable "subnet_ids" {
  type        = list
  description = "Identifiers of EC2 Subnets."
}

variable "transit_gateway_id" {
  type        = string
  description = "Identifier of EC2 Transit Gateway."
}

variable "vpc_id" {
  type        = string
  description = "Identifier of EC2 VPC."
}

variable "transit_gateway_default_route_table_association" {
  default     = null
  type        = bool
  description = "Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table."
}

variable "transit_gateway_default_route_table_propagation" {
  default     = null
  type        = bool
  description = "Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}