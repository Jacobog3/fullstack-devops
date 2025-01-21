terraform {
  backend "s3" {
    bucket         = "fullstack-challenge-tf-bucket"
    key            = "devel/backend.tf"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}
