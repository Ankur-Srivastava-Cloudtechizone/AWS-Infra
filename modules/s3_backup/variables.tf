variable "s3_buckets" {
  type = map(object({}))
}

variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}
