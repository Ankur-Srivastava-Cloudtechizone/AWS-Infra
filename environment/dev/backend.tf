terraform {
  backend "s3" {
    bucket         = "my-terraform-tfstate-dev"
    key            = "envs/dev/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
