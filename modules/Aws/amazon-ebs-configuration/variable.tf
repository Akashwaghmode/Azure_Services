variable "region" {
  description = "AWS region"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the EBS volume"
  type        = string
}

variable "size" {
  description = "Size of the EBS volume in GiB"
  type        = number
}

variable "encrypted" {
  description = "Whether the EBS volume should be encrypted"
  type        = bool
  
}

variable "kms_key_id" {
  description = "KMS key ID for encrypting the EBS volume (optional)"
  type        = string

}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)

}
