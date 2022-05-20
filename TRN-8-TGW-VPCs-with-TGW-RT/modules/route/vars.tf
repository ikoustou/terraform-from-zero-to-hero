variable "route_table_id" {
  type = string
  
}

#--- OPTIONAL VARIABLES  ---
variable "destination_cidr_block" {
  type        = string
  default     = null
}

variable "gateway_id" {
  description = "internet gateway id"
  type        = string
  default     = null
}

variable "transit_gateway_id" {
  type    = string
  default = null       
}

variable "vpc_peering_connection_id" {
  type    = string
  default = null       
}