locals {
  config = yamldecode(file("${path.module}/config.yaml"))
}

resource  "aws_s3_bucket" "bucket" {
  for_each = { for b in local.config.buckets : b.name => b}

  bucket = each.key
  tags = each.value.tags
}