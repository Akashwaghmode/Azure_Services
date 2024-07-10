variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "cloudfront_distribution_config" {
  description = "Configuration for CloudFront distribution"
  type = object({
    enabled             = bool
    comment             = string
    default_cache_behavior = object({
      target_origin_id       = string
      viewer_protocol_policy = string
      allowed_methods        = list(string)
      cached_methods         = list(string)
      compress               = bool
      default_ttl            = number
      max_ttl                = number
      min_ttl                = number
      forwarded_values = object({
        query_string = bool
        cookies = object({
          forward = string
        })
      })
    })
    origins = list(object({
      domain_name = string
      origin_id   = string
      origin_path = string
      custom_origin_config = object({
        http_port                = number
        https_port               = number
        origin_protocol_policy   = string
        origin_ssl_protocols     = list(string)
      })
    }))
    viewer_certificate = object({
      cloudfront_default_certificate = bool
      acm_certificate_arn            = string
      ssl_support_method             = string
      minimum_protocol_version       = string
    })
    tags = map(string)
  })
}
