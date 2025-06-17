resource "aws_ecr_repository" "this" {
  for_each = var.ecr_repositories

  name = each.key

  image_tag_mutability = "IMMUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = merge(
    var.common_tags,
    {
      Name        = each.key
      Environment = var.environment
    }
  )
}


