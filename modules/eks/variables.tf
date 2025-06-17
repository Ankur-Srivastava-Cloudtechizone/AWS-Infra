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

variable "common_tags" {
  type = map(string)
}

variable "environment" {
  type = string
}
