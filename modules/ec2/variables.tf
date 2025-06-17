variable "instances" {
  type = map(object({
    ami                 = string
    instance_type       = string
    subnet_name         = string
    security_group_name = string
    associate_public_ip = bool
    key_name            = string
  }))
}

variable "environment" {
  type = string
}

variable "common_tags" {
  type = map(string)
}
