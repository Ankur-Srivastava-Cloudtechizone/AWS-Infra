# eks variables here
variable "clusters" {
  description = "EKS clusters map"
  type = map(object({
    role_arn   = string
    subnet_ids = list(string)
  }))
}
