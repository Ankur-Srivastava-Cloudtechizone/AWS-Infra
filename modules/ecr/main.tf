resource "aws_ecr_repository" "this" {
  for_each = var.repositories
  name     = each.key
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}
