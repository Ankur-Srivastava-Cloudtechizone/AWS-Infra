# cloudfront outputs here
output "distribution_domains" {
  value = { for k, v in aws_cloudfront_distribution.this : k => v.domain_name }
}
