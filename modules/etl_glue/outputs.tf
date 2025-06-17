output "etl_job_names" {
  value = [for k, v in aws_glue_job.this : v.name]
}
