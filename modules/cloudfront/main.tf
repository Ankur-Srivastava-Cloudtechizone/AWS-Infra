resource "aws_cloudfront_distribution" "this" {
  for_each = var.cloudfront_distributions

  enabled             = true
  comment             = each.value.comment
  default_root_object = "index.html"

  origin {
    domain_name = each.value.origin_domain
    origin_id   = "origin-${each.key}"
  }

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "origin-${each.key}"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
  }

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  tags = merge(
    var.common_tags,
    {
      Name        = each.key
      Environment = var.environment
    }
  )
}
