resource "aws_sns_topic" "my_sns_topic" {
  name = var.sns_topic_name

  tags = var.tags
}

resource "aws_sns_topic_subscription" "my_sns_subscriptions" {
  for_each = { for sub in var.subscriptions : "${sub.protocol}-${sub.endpoint}" => sub }

  topic_arn = aws_sns_topic.my_sns_topic.arn
  protocol  = each.value.protocol
  endpoint  = each.value.endpoint
}
