# aurora variables here
variable "db_clusters" {
  description = "Aurora clusters map"
  type = map(object({
    engine_version         = string
    master_username        = string
    master_password        = string
    subnet_ids             = list(string)
    vpc_security_group_ids = list(string)
  }))
}
