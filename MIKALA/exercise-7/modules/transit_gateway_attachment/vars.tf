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

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}