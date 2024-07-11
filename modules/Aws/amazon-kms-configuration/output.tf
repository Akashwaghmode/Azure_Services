output "kms_key_id" {
  description = "ID of the AWS KMS key"
  value       = aws_kms_key.kms_key.key_id
}

output "kms_key_arn" {
  description = "ARN of the AWS KMS key"
  value       = aws_kms_key.kms_key.arn
}
