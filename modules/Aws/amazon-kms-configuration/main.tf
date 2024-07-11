resource "aws_kms_key" "kms_key" {
  description             = var.description
  deletion_window_in_days = var.deletion_window_in_days

  policy = var.kms_policy

  tags = var.tags
}
