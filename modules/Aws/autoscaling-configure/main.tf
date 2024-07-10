resource "aws_lb" "my_lb" {
  name               = var.load_balancer_name
  internal           = var.internal
  security_groups    = var.security_groups
  subnets            = var.subnets

  enable_deletion_protection = false
  idle_timeout               = var.idle_timeout

  tags = var.tags
}

resource "aws_lb_target_group" "my_target_groups" {
  for_each = { for idx, tg in var.target_groups : idx => tg }

  name     = each.value.name
  port     = each.value.port
  protocol = each.value.protocol
  vpc_id   = each.value.vpc_id

  health_check {
    path                = each.value.health_check.path
    interval            = each.value.health_check.interval
    timeout             = each.value.health_check.timeout
    healthy_threshold   = each.value.health_check.healthy_threshold
    unhealthy_threshold = each.value.health_check.unhealthy_threshold
  }

  tags = var.tags
}

resource "aws_lb_listener" "my_listeners" {
  for_each = { for idx, listener in var.listeners : idx => listener }

  load_balancer_arn = aws_lb.my_lb.arn
  port              = each.value.port
  protocol          = each.value.protocol

  default_action {
    type             = "forward"
    target_group_arn = each.value.target_group_arn
  }
}
