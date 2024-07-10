variable "role_name" {
  description = "The name of the IAM role"
  type        = string
}

variable "role_description" {
  description = "The description of the IAM role"
  type        = string
}

variable "assume_role_policy" {
  description = "The assume role policy document"
  type        = string
}

variable "policies" {
  description = "A list of IAM policies to attach to the role"
  type = list(object({
    name        = string
    description = string
    document    = string
  }))
}

variable "tags" {
  description = "A map of tags to assign to the IAM resources"
  type        = map(string)
}

