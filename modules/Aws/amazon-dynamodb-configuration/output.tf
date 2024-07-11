output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = aws_dynamodb_table.dynamodb_table.name
}

output "dynamodb_table_arn" {
  description = "ARN of the DynamoDB table"
  value       = aws_dynamodb_table.dynamodb_table.arn
}

output "dynamodb_table_read_capacity" {
  description = "Read capacity units of the DynamoDB table"
  value       = aws_dynamodb_table.dynamodb_table.read_capacity
}

output "dynamodb_table_write_capacity" {
  description = "Write capacity units of the DynamoDB table"
  value       = aws_dynamodb_table.dynamodb_table.write_capacity
}
