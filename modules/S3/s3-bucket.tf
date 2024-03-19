resource "aws_s3_bucket" "iti_s3_bucket" {
  bucket = var.s3_bucket_name
  tags = {
    Name = "s3_bucket.iti"
  }
}