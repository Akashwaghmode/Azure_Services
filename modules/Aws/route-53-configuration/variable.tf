variable "region" {
  description = "AWS region"
  type        = string
}

variable "zone_name" {
  description = "Domain name for the Route 53 hosted zone"
  type        = string
}

variable "record_name" {
  description = "Name of the DNS record"
  type        = string
}

variable "record_type" {
  description = "Type of the DNS record (e.g., A, CNAME)"
  type        = string
}

variable "record_ttl" {
  description = "TTL (Time To Live) of the DNS record"
  type        = number
  
}

variable "record_records" {
  description = "List of records (e.g., IP addresses) for the DNS record"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)

}
