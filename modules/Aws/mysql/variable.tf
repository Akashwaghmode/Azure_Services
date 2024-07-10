variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "db_instance_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database to create"
  type        = string
}

variable "db_username" {
  description = "The master username for the database"
  type        = string
}

variable "db_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage size in gigabytes"
  type        = number
}

variable "backup_retention_period" {
  description = "The number of days to retain backups"
  type        = number
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security groups to associate with the RDS instance"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group to use for the RDS instance"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the RDS resources"
  type        = map(string)
}
