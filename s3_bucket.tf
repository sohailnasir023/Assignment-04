resource "aws_s3_bucket" "example" {
  bucket = var.s3_bucket_name

  tags = {
    Environment = var.Environment
    project     = var.project_name
  }
}
