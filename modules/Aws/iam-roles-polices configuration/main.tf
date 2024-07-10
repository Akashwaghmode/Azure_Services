resource "aws_iam_role" "my_iam_role" {
  name               = var.role_name
  description        = var.role_description
  assume_role_policy = var.assume_role_policy

  tags = var.tags
}

resource "aws_iam_policy" "my_iam_policy" {
  for_each    = { for idx, policy in var.policies : idx => policy }
  name        = each.value.name
  description = each.value.description
  policy      = each.value.document

  tags = var.tags
}

resource "aws_iam_role_policy_attachment" "my_iam_role_policy_attachment" {
  for_each  = { for idx, policy in var.policies : idx => policy }
  role      = aws_iam_role.my_iam_role.name
  policy_arn = aws_iam_policy.my_iam_policy[each.key].arn
}

