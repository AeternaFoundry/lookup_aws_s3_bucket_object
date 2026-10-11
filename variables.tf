variable "s3_bucket_object_lookup" {
  description = <<EOT
Map of s3_bucket_object_lookup, attributes below
Required:
    - bucket
    - key
Optional:
    - range
    - region
    - tags
    - version_id
EOT

  type = map(object({
    bucket     = string
    key        = string
    range      = optional(string)
    region     = optional(string)
    tags       = optional(map(string))
    version_id = optional(string)
  }))
}

