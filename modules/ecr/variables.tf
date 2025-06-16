# ecr variables here
variable "repositories" {
  description = "ECR repositories map"
  type = map(object({}))
}
