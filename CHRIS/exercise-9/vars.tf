variable "region" {
  description = "Name of this AWS region"
  type        = string
  default     = "us-east-1"
}

variable "num_instances" {
  description = "count of instances"
  type        = number
  default = null
}