
terraform {
  backend "s3" {
    bucket         = "my-tfstate-bucket"
    key            = "state/aws-infra/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
