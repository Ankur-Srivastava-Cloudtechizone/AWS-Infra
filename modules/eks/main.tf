resource "aws_eks_cluster" "this" {
  for_each = var.eks_clusters

  name     = each.key
  role_arn = each.value.role_arn

  vpc_config {
    subnet_ids = each.value.subnet_ids
  }

  version                 = each.value.version
  enabled_cluster_log_types = ["api", "audit", "authenticator"]

  tags = merge(
    var.common_tags,
    {
      Name        = each.key
      Environment = var.environment
    }
  )
}

resource "aws_eks_node_group" "this" {
  for_each = var.eks_clusters

  cluster_name    = aws_eks_cluster.this[each.key].name
  node_group_name = "${each.key}-ng"
  node_role_arn   = each.value.node_role_arn
  subnet_ids      = each.value.subnet_ids

  scaling_config {
    desired_size = each.value.desired_size
    max_size     = each.value.max_size
    min_size     = each.value.min_size
  }

  tags = merge(
    var.common_tags,
    {
      Name        = "${each.key}-ng"
      Environment = var.environment
    }
  )
}
