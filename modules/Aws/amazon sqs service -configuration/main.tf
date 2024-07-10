resource "aws_sqs_queue" "my_queues" {
  for_each = { for idx, queue in var.queues : idx => queue }

  name                      = each.value.name
  delay_seconds             = each.value.delay_seconds
  maximum_message_size      = each.value.maximum_message_size
  message_retention_seconds = each.value.message_retention_seconds
  receive_wait_time_seconds = each.value.receive_wait_time_seconds
  visibility_timeout_seconds = each.value.visibility_timeout_seconds

  tags = merge(var.tags, each.value.tags)
}
