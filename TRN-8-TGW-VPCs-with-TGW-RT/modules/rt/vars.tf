variable "vpc_id" {
  description = "vpc id"
  type        = string
}
# --- Optional  ---
variable "tags" {
  type    = map(string)
  default = null
}
