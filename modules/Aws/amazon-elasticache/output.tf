output "elasticache_cluster_id" {
  description = "ID of the ElastiCache cluster"
  value       = aws_elasticache_cluster.cluster.id
}

output "elasticache_cluster_endpoint" {
  description = "Endpoint of the ElastiCache cluster"
  value       = aws_elasticache_cluster.cluster.endpoint
}

output "elasticache_cluster_port" {
  description = "Port of the ElastiCache cluster"
  value       = aws_elasticache_cluster.cluster.port
}
