resource "aws_cloudfront_distribution" "this" {
  for_each = var.distributions

  origin {
    domain_name = each.value.origin_domain
    origin_id   = "origin-${each.key}"
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = each.value.comment
  default_root_object = "index.html"

  default_cache_behavior {
    target_origin_id       = "origin-${each.key}"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
