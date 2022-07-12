variable "ami_id" {
    description = "Which ami to use on instance"
    type = string
    default = null
}

variable "instance_type" {
    type = string
    description = "instance_type"
}

# variable "num_instances" {
#     type = string
#     description = "number of instances"
# }