
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "ec2_instances" {
  type = map(object({
    ami                    = string
    instance_type          = string
    key_name               = string
    subnet_id              = string
    vpc_security_group_ids = list(string)
  }))
}

variable "db_clusters" {
  type = map(object({
    engine_version         = string
    master_username        = string
    master_password        = string
    subnet_ids             = list(string)
    vpc_security_group_ids = list(string)
  }))
}

variable "eks_clusters" {
  type = map(object({
    role_arn   = string
    subnet_ids = list(string)
  }))
}

variable "ecr_repositories" {
  type = map(object({}))
}

variable "cloudfront_distributions" {
  type = map(object({
    comment       = string
    origin_domain = string
  }))
}

variable "route53_records" {
  type = map(object({
    zone_id      = string
    name         = string
    type         = string
    record_value = string
  }))
}

variable "s3_buckets" {
  type = map(object({}))
}

variable "etl_jobs" {
  type = map(object({
    role_arn        = string
    script_location = string
  }))
}
