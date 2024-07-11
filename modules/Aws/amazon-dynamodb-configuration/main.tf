resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  hash_key       = var.hash_key
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  tags = var.tags
}
