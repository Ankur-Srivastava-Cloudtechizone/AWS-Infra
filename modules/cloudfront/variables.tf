# cloudfront variables here
variable "distributions" {
  description = "CloudFront distributions map"
  type = map(object({
    comment       = string
    origin_domain = string
  }))
}
