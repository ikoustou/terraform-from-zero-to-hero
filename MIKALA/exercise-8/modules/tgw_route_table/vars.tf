variable "transit_gateway_id" {
  type        = string
  description = "Identifier of EC2 Transit Gateway."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}