# aurora outputs here
output "cluster_endpoints" {
  value = { for k, v in aws_rds_cluster.this : k => v.endpoint }
}
