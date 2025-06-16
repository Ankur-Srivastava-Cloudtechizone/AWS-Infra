# route53 variables here
variable "records" {
  description = "Route53 records map"
  type = map(object({
    zone_id      = string
    name         = string
    type         = string
    record_value = string
  }))
}
