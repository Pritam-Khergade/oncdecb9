resource "aws_s3_bucket" "s3" {
  bucket = "oncdecb9-buckect-infra-pipeline"
  tags   = {
    porject = "demo-oncdec"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.73.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
