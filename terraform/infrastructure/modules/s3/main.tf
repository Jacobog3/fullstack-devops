resource "aws_s3_bucket" "project_bucket" {
  bucket = "fullstack-challenge-${var.environment}-bucket"

  tags = {
    Name = "fullstack-challenge-tf-bucket"
  }
}
