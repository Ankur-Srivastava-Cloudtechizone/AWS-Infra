variable "db_clusters" {
  type = map(object({
    engine_version         = string
    master_username        = string
    master_password        = string
    subnet_ids             = list(string)
    vpc_security_group_ids = list(string)
  }))
}

variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}
