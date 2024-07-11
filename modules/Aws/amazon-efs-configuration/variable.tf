variable "region" {
  description = "AWS region"
  type        = string
}

variable "creation_token" {
  description = "A unique name for the EFS file system"
  type        = string
}

variable "performance_mode" {
  description = "The performance mode of the file system"
  type        = string

}

variable "encrypted" {
  description = "Whether the file system should be encrypted"
  type        = bool
  
}

variable "subnet_ids" {
  description = "List of subnet IDs in which to create EFS mount targets"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for the EFS mount targets"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  
}
