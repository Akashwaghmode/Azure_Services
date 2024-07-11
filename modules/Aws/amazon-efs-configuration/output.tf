output "efs_id" {
  description = "ID of the Amazon EFS file system"
  value       = aws_efs_file_system.efs.id
}

output "efs_dns_name" {
  description = "DNS name of the Amazon EFS file system"
  value       = aws_efs_file_system.efs.dns_name
}

output "efs_mount_target_ids" {
  description = "IDs of the Amazon EFS mount targets"
  value       = aws_efs_mount_target.mount_target[*].id
}
