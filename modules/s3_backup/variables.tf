variable "buckets" {
  description = "S3 Backup buckets map"
  type        = map(object({}))
}
