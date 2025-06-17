output "distribution_ids" {
  value = { for k, v in aws_cloudfront_distribution.this : k => v.id }
}
