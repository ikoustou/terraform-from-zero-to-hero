variable "name" {
  type        = string
  description = "Name of the security group."
}

variable "description" {
  type        = string
  description = "Security group description."
}

variable "vpc_id" {
  type        = string
  description = "VPC ID."
}

variable "ingress" {  
  type      = list(object({    
    from_port = number
    to_port   = number
    protocol  = string  }))
  description = "Configuration block for ingress rules."
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource."
}