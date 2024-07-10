variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "sns_topic_name" {
  description = "The name of the SNS topic"
  type        = string
}

variable "subscriptions" {
  description = "A list of SNS subscriptions"
  type = list(object({
    protocol = string
    endpoint = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the SNS topic"
  type        = map(string)
}
