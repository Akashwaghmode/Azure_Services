resource "aws_cloudfront_distribution" "my_distribution" {
  enabled             = var.cloudfront_distribution_config.enabled
  comment             = var.cloudfront_distribution_config.comment

  origins {
    for_each = { for idx, origin in var.cloudfront_distribution_config.origins : idx => origin }
    
    domain_name = each.value.domain_name
    origin_id   = each.value.origin_id
    origin_path = each.value.origin_path
    
    custom_origin_config {
      http_port              = each.value.custom_origin_config.http_port
      https_port             = each.value.custom_origin_config.https_port
      origin_protocol_policy = each.value.custom_origin_config.origin_protocol_policy
      origin_ssl_protocols   = each.value.custom_origin_config.origin_ssl_protocols
    }
  }

  default_cache_behavior {
    target_origin_id       = var.cloudfront_distribution_config.default_cache_behavior.target_origin_id
    viewer_protocol_policy = var.cloudfront_distribution_config.default_cache_behavior.viewer_protocol_policy
    allowed_methods        = var.cloudfront_distribution_config.default_cache_behavior.allowed_methods
    cached_methods         = var.cloudfront_distribution_config.default_cache_behavior.cached_methods
    compress               = var.cloudfront_distribution_config.default_cache_behavior.compress
    default_ttl            = var.cloudfront_distribution_config.default_cache_behavior.default_ttl
    max_ttl                = var.cloudfront_distribution_config.default_cache_behavior.max_ttl
    min_ttl                = var.cloudfront_distribution_config.default_cache_behavior.min_ttl

    forwarded_values {
      query_string = var.cloudfront_distribution_config.default_cache_behavior.forwarded_values.query_string
      cookies {
        forward = var.cloudfront_distribution_config.default_cache_behavior.forwarded_values.cookies.forward
      }
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = var.cloudfront_distribution_config.viewer_certificate.cloudfront_default_certificate
    acm_certificate_arn            = var.cloudfront_distribution_config.viewer_certificate.acm_certificate_arn
    ssl_support_method             = var.cloudfront_distribution_config.viewer_certificate.ssl_support_method
    minimum_protocol_version       = var.cloudfront_distribution_config.viewer_certificate.minimum_protocol_version
  }

  tags = var.cloudfront_distribution_config.tags
}
