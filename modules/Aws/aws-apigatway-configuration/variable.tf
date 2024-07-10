variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "resources" {
  description = "A list of API resources"
  type = list(object({
    path = string
    methods = list(object({
      http_method = string
      authorization = string
      integration = object({
        type        = string
        uri         = string
        http_method = string
      })
    }))
  }))
}

variable "stages" {
  description = "A list of stages for the API Gateway"
  type = list(object({
    name                   = string
    description            = string
    deployment_description = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the API Gateway resources"
  type        = map(string)
}
