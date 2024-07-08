# variables.tf
variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The key name for the EC2 instance"
  type        = string
}
variable "tags" {
  description  = " the tags name of ec2 instance"
  type         = string 
}
