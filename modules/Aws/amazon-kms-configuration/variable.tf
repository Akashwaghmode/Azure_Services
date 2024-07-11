variable "region" {
  description = "AWS region"
  type        = string
}

variable "description" {
  description = "Description of the KMS key"
  type        = string
}

variable "deletion_window_in_days" {
  description = "Deletion window in days for the KMS key"
  type        = number

}

variable "kms_policy" {
  description = "IAM policy document for the KMS key"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)

}
