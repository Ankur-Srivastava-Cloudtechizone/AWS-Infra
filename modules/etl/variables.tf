variable "etl_jobs" {
  description = "ETL jobs for AWS Glue"
  type = map(object({
    role_arn        = string
    script_location = string
  }))
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
}

variable "environment" {
  description = "Environment name"
  type        = string
}
