resource "aws_efs_file_system" "efs" {
  creation_token = var.creation_token
  performance_mode = var.performance_mode
  encrypted = var.encrypted
  tags = var.tags
}

resource "aws_efs_mount_target" "mount_target" {
  count          = length(var.subnet_ids)
  file_system_id = aws_efs_file_system.efs.id
  subnet_id      = var.subnet_ids[count.index]
  security_groups = var.security_group_ids
}
