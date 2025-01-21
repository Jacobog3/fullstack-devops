resource "aws_s3_bucket" "backend_bucket" {
  bucket = "fullstack-challenge-tf-bucket"

  tags = {
    Name = "fullstack-challenge-tf-bucket"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock-table"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}
