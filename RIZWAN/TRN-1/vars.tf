variable "vpc_cidr_block" {
  type        = string
  description = "The IPv4 CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
    type        = string
    description = "VPC name tag"
    default     = "exercise_1_vpc"
}

variable "subnet_1_cidr_block" {
    type        = string
    description = "The IPv4 CIDR block for the subnet"
    default     = "10.0.0.0/24"
}

variable "subnet_1_name" {
    type        = string
    description = "Subnet 1 name tag"
    default     = "exercise_1_subnet_1"
}

variable "subnet_2_cidr_block" {
    type        = string
    description = "The IPv4 CIDR block for the subnet"
    default     = "10.0.1.0/24"
}

variable "subnet_2_name" {
    type        = string
    description = "Subnet 2 name tag"
    default     = "exercise_1_subnet_2"
}

variable "route_table_name" {
    type        = string
    description = "Route table name tag"
    default     = "exercise_1_route_table"
}

variable "route_table_association_1_name" {
    type        = string
    description = "Route table association 1 name tag"
    default     = "exercise_1_route_table_association_1"
}

variable "route_table_association_2_name" {
    type        = string
    description = "Route table association 2 name tag"
    default     = "exercise_1_route_table_association_2"
}