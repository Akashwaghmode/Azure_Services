variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "db_username" {
  description = "The database admin username"
  type        = string
}

variable "db_password" {
  description = "The database admin password"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "The instance class of the RDS instance"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in GBs"
  type        = number
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security groups to associate with the RDS instance"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The subnet group name for the RDS instance"
  type        = string
}

variable "storage_type" {
  description = "The storage type for the RDS instance"
  type        = string
}

variable "engine_version" {
  description = "The engine version for the RDS instance"
  type        = string
}

variable "publicly_accessible" {
  description = "Whether the database is publicly accessible"
  type        = bool
}

variable "parameter_group_name" {
  description = "The parameter group name for the RDS instance"
  type        = string
}

variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot before destroying the instance"
  type        = bool
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
}
