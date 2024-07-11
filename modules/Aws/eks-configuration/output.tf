output "eks_cluster_id" {
  description = "ID of the EKS cluster"
  value       = aws_eks_cluster.eks.id
}

output "eks_cluster_endpoint" {
  description = "Endpoint for the EKS cluster"
  value       = aws_eks_cluster.eks.endpoint
}

output "eks_cluster_arn" {
  description = "ARN of the EKS cluster"
  value       = aws_eks_cluster.eks.arn
}
