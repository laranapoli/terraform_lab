resource "aws_s3_bucket" "upload_test" {
  bucket = "tf-test-bucket-lnm-9538"

  tags = {
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_object" "object" {
  for_each = fileset("data/", "*")

  bucket = aws_s3_bucket.upload_test.id
  key    = each.value
  source = "data/${each.value}"
}
