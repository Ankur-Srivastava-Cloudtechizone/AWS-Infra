# etl outputs here
output "glue_job_names" {
  value = [for j in aws_glue_job.this : j.name]
}
