variable "region" {
  description = "AWS region"
  type        = string
}

variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "image_tag_mutability" {
  description = "Tag mutability setting for images in the repository"
  type        = string

}

variable "scan_on_push" {
  description = "Enable image scanning on push"
  type        = bool

}

variable "lifecycle_policy" {
  description = "Lifecycle policy for the ECR repository"
  type        = string
}
