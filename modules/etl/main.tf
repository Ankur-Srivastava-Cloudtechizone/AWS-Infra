resource "aws_glue_job" "this" {
  for_each = var.etl_jobs

  name     = each.key
  role_arn = each.value.role_arn
  command {
    script_location = each.value.script_location
  }

  tags = merge(var.common_tags, {
    Environment = var.environment
  })
}
