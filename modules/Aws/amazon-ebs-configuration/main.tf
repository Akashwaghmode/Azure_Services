resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.availability_zone
  size              = var.size
  encrypted         = var.encrypted
  kms_key_id        = var.kms_key_id
  tags              = var.tags
}
