variable "ecr_repositories" {
  type = map(object({}))
}

variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}
