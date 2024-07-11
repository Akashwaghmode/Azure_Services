variable "region" {
  description = "AWS region"
  type        = string
}

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "Billing mode for DynamoDB (PROVISIONED or PAY_PER_REQUEST)"
  type        = string

}

variable "hash_key" {
  description = "Name of the table's hash key"
  type        = string
}

variable "hash_key_type" {
  description = "Type of the table's hash key"
  type        = string

}

variable "read_capacity" {
  description = "Read capacity units for the table"
  type        = number

}

variable "write_capacity" {
  description = "Write capacity units for the table"
  type        = number
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  
}
