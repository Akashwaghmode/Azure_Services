output "db_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.mysql_instance.endpoint
}

output "db_instance_id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.mysql_instance.id
}
