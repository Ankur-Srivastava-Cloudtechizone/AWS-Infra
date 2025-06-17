output "cluster_endpoints" {
  value = { for k, v in aws_rds_cluster.this : k => v.endpoint }
}

output "cluster_arns" {
  value = { for k, v in aws_rds_cluster.this : k => v.arn }
}
