output "cluster_name" {
  value = aws_eks_cluster.ajith_cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.ajith_cluster.endpoint
}