output "cluster_names" {
  value = [for k, v in aws_eks_cluster.this : v.name]
}

output "node_group_names" {
  value = [for k, v in aws_eks_node_group.this : v.node_group_name]
}
