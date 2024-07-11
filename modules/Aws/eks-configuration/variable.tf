variable "region" {
  description = "AWS region"
  type        = string
}

variable "name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "enabled_cluster_log_types" {
  description = "List of cluster log types to enable"
  type        = list(string)

}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}

variable "iam_role_name" {
  description = "Name of the IAM role for EKS"
  type        = string
}

variable "assume_role_policy" {
  description = "Assume role policy document"
  type        = string
}

variable "iam_policy_arns" {
  description = "Map of IAM policy ARNs to attach to the role"
  type        = map(string)
}
