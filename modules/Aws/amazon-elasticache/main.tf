resource "aws_elasticache_cluster" "cluster" {
  cluster_id           = var.cluster_id
  engine               = var.engine
  node_type            = var.node_type
  num_cache_nodes      = var.num_cache_nodes
  parameter_group_name = var.parameter_group_name
  port                 = var.port
  subnet_group_name    = var.subnet_group_name
  security_group_ids   = var.security_group_ids
  tags                 = var.tags
}
