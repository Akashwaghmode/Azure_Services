variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "load_balancer_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "internal" {
  description = "Whether the load balancer is internal"
  type        = bool
}

variable "security_groups" {
  description = "A list of security group IDs to assign to the load balancer"
  type        = list(string)
}

variable "subnets" {
  description = "A list of subnet IDs to attach to the load balancer"
  type        = list(string)
}

variable "listeners" {
  description = "A list of listener configurations"
  type = list(object({
    port            = number
    protocol        = string
    target_group_arn = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the load balancer"
  type        = map(string)
}

variable "target_groups" {
  description = "A list of target group configurations"
  type = list(object({
    name       = string
    port       = number
    protocol   = string
    vpc_id     = string
    health_check = object({
      path                = string
      interval            = number
      timeout             = number
      healthy_threshold   = number
      unhealthy_threshold = number
    })
  }))
}

variable "idle_timeout" {
  description = "The idle timeout value for the load balancer"
  type        = number
}
