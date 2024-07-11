variable "region" {
  description = "AWS region"
  type        = string
}

variable "pipeline_name" {
  description = "Name of the CodePipeline"
  type        = string
}

variable "role_arn" {
  description = "IAM role ARN for CodePipeline"
  type        = string
}

variable "artifact_store_location" {
  description = "S3 bucket for artifact store"
  type        = string
}

variable "artifact_store_type" {
  description = "Type of artifact store"
  type        = string

}

variable "encryption_key_id" {
  description = "KMS key ID for artifact encryption"
  type        = string
}

variable "encryption_key_type" {
  description = "Type of encryption key"
  type        = string
  
}

variable "source_stage_name" {
  description = "Name of the source stage"
  type        = string
}

variable "source_action_name" {
  description = "Name of the action in the source stage"
  type        = string
}

variable "source_category" {
  description = "Category of the action in the source stage"
  type        = string
}

variable "source_provider" {
  description = "Provider for the source stage"
  type        = string
}

variable "source_version" {
  description = "Version for the source stage"
  type        = string
}

variable "source_output_artifact" {
  description = "Output artifact for the source stage"
  type        = string
}

variable "source_configuration" {
  description = "Configuration for the source stage"
  type        = map(string)
}

variable "deploy_stage_name" {
  description = "Name of the deploy stage"
  type        = string
}

variable "deploy_action_name" {
  description = "Name of the action in the deploy stage"
  type        = string
}

variable "deploy_category" {
  description = "Category of the action in the deploy stage"
  type        = string
}

variable "deploy_provider" {
  description = "Provider for the deploy stage"
  type        = string
}

variable "deploy_version" {
  description = "Version for the deploy stage"
  type        = string
}

variable "deploy_input_artifact" {
  description = "Input artifact for the deploy stage"
  type        = string
}

variable "deploy_configuration" {
  description = "Configuration for the deploy stage"
  type        = map(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  
}

  n