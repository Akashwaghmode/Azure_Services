output "iam_role_arn" {
  description = "The ARN of the IAM role"
  value       = aws_iam_role.my_iam_role.arn
}

output "iam_policy_arns" {
  description = "The ARNs of the IAM policies attached to the role"
  value       = [for idx, policy in aws_iam_policy.my_iam_policy : aws_iam_policy.my_iam_policy[idx].arn]
}
