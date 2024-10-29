module "s3" {
  source = "./s3"
  buckets_name = "oncdecb9-buckect-infra-pipeline"
  bucket_versioning = "Enabled"
  }