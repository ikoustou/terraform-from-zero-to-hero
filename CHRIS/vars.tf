variable "region" {
    description = "Name of this AWS region"
    type = string
    default = "us-east-1"
}

variable "cidr_block" {
    description = "Cidr block info"
    type = string
}

variable "subnet-1-cidr" {
    description = "subnet-1"
    type =  string
}

variable "subnet-2-cidr" {
    description = "subnet-2"
    type =  string
}
