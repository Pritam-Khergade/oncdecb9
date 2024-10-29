resource "aws_s3_bucket" "s3" {
  bucket = "oncdecb9-buckect-infra-pipeline"
  tags   = {
    porject = "demo-oncdec"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.s3.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.s3.id
  versioning_configuration {
    status = "Enabled"
  }
}

