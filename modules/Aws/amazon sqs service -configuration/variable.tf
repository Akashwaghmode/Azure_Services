variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "queues" {
  description = "A list of SQS queue configurations"
  type = list(object({
    name                      = string
    delay_seconds             = number
    maximum_message_size      = number
    message_retention_seconds = number
    receive_wait_time_seconds = number
    visibility_timeout_seconds = number
    tags                      = map(string)
  }))
}

variable "tags" {
  description = "A map of tags to assign to all resources"
  type        = map(string)
}
