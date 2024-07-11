variable "region" {
  description = "AWS region"
  type        = string
}

variable "cluster_id" {
  description = "ID for the ElastiCache cluster"
  type        = string
}

variable "engine" {
  description = "ElastiCache engine type (e.g., redis, memcached)"
  type        = string
}

variable "node_type" {
  description = "ElastiCache node type (e.g., cache.t2.micro)"
  type        = string
}

variable "num_cache_nodes" {
  description = "Number of cache nodes in the cluster"
  type        = number

}

variable "parameter_group_name" {
  description = "Name of the parameter group for the ElastiCache cluster"
  type        = string
}

variable "port" {
  description = "Port number on which the ElastiCache cluster accepts connections"
  type        = number
}

variable "subnet_group_name" {
  description = "Name of the subnet group for the ElastiCache cluster"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs for the ElastiCache cluster"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  
}
