variable "route53_records" {
  type = map(object({
    zone_id      = string
    name         = string
    type         = string
    record_value = string
    ttl          = optional(number)
  }))
}

variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}
