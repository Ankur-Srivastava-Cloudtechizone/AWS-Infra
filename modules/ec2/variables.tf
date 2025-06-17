variable "instances" {
  description = "Map of EC2 instances"
  type = map(object({
    ami                   = string
    instance_type         = string
    subnet_id             = string
    security_group_ids    = list(string)
    associate_public_ip   = bool
    key_name              = string
  }))
}

variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}
