# etl variables here
variable "jobs" {
  description = "ETL Glue Jobs map"
  type = map(object({
    role_arn        = string
    script_location = string
  }))
}
