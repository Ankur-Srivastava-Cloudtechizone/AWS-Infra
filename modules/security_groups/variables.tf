variable "security_groups" {
  description = "Map of security groups to create"
  type = map(object({
    description       = string
    vpc_id            = string
    ssh_allowed_cidrs = list(string)
  }))
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
}
