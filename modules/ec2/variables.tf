variable "instances" {
  type = map(object({
    ami                 = string
    instance_type       = string
    subnet_name         = string
    security_group_names= list(string)
    associate_public_ip = bool
    key_name            = string
  }))
}

variable "subnet_names" {
  type = set(string)
}

variable "security_group_names" {
  type = set(string)
}

variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}
