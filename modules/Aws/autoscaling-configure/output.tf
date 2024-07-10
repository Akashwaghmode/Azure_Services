output "load_balancer_arn" {
  description = "The ARN of the load balancer"
  value       = aws_lb.my_lb.arn
}

output "load_balancer_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.my_lb.dns_name
}

output "target_group_arns" {
  description = "The ARNs of the target groups"
  value       = [for tg in aws_lb_target_group.my_target_groups : tg.arn]
}
