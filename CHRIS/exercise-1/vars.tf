variable "region" {
  description = "Name of this AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "Cidr block info"
  type        = string
}

variable "subnet_1_cidr" {
  description = "subnet-1"
  type        = string
}

variable "subnet_2_cidr" {
  description = "subnet-2"
  type        = string
}
