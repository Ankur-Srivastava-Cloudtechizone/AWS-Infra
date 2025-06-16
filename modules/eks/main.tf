
resource "aws_eks_cluster" "this" {
  for_each = var.clusters

  name     = each.key
  role_arn = each.value.role_arn

  vpc_config {
    subnet_ids = each.value.subnet_ids
  }
}
