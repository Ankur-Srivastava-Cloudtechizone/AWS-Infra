variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "instances" {
  type = map(object({
    ami                   = string
    instance_type         = string
    subnet_name           = string
    security_group_names  = list(string)
    associate_public_ip   = bool
    key_name              = string
  }))
}


variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}

# variable "aws_region" {
#   description = "AWS region"
#   type        = string
#   default     = "ap-south-1"
# }

# variable "common_tags" {
#   type = map(string)
# }

# variable "environment" {
#   type = string
# }

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
    role_arn        = string
    version         = string
    subnet_ids      = list(string)
    node_role_arn   = string
    desired_size    = number
    max_size        = number
    min_size        = number
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
    ttl          = optional(number)
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

variable "security_groups" {
  description = "Map of security groups"
  type = map(object({
    description       = string
    vpc_id            = string
    ssh_allowed_cidrs = list(string)
  }))
}

variable "subnet_names" {
  type = set(string)
}

variable "security_group_names" {
  type = set(string)
}

# variable "environment" {
#   type = string
# }
