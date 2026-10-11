data "aws_s3_bucket_object" "s3_bucket_object_lookup" {
  for_each = var.s3_bucket_object_lookup

  bucket     = each.value.bucket
  key        = each.value.key
  range      = each.value.range
  region     = each.value.region
  tags       = each.value.tags
  version_id = each.value.version_id
}

