output "sqs_queue_urls" {
  description = "The URLs of the SQS queues"
  value       = [for q in aws_sqs_queue.my_queues : q.url]
}

output "sqs_queue_arns" {
  description = "The ARNs of the SQS queues"
  value       = [for q in aws_sqs_queue.my_queues : q.arn]
}
