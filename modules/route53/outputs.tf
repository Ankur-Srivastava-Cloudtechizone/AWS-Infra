# route53 outputs here
output "dns_records" {
  value = [for r in aws_route53_record.this : r.fqdn]
}
