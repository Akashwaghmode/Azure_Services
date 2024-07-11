resource "aws_iam_role" "eks" {
  name = var.iam_role_name

  assume_role_policy = var.assume_role_policy

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "eks" {
  for_each = var.iam_policy_arns

  role       = aws_iam_role.eks.name
  policy_arn = each.value
}

resource "aws_eks_cluster" "eks" {
  name     = var.name
  role_arn = aws_iam_role.eks.arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  tags = var.tags

  enabled_cluster_log_types = var.enabled_cluster_log_types
}
