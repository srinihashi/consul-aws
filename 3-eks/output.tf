output "cluster_region" {
  value = var.region
}

# Get EKS Cluster ID
output "cluster_name" {
  value = module.eks.cluster_name
}
