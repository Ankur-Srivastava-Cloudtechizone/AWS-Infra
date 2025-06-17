resource "aws_glue_job" "this" {
  for_each = var.etl_jobs

  name     = each.key
  role_arn = each.value.role_arn

  command {
    name            = "glueetl"
    script_location = each.value.script_location
    python_version  = "3"
  }

  glue_version = "4.0"

  tags = merge(
    var.common_tags,
    {
      Name        = each.key
      Environment = var.environment
    }
  )
}
