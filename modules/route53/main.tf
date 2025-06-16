resource "aws_route53_record" "this" {
  for_each = var.records

  zone_id = each.value.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = 300
  records = [each.value.record_value]
}
