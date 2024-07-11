output "ebs_volume_id" {
  description = "ID of the AWS EBS volume"
  value       = aws_ebs_volume.ebs_volume.id
}

output "ebs_volume_size" {
  description = "Size of the AWS EBS volume (GiB)"
  value       = aws_ebs_volume.ebs_volume.size
}

output "ebs_volume_type" {
  description = "Type of the AWS EBS volume"
  value       = aws_ebs_volume.ebs_volume.type
}
