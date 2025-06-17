variable "etl_jobs" {
  type = map(object({
    role_arn        = string
    script_location = string
  }))
}

variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}
