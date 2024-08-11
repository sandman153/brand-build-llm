resource "random_id" "bucket_id" {
  byte_length = 4
}

locals {
  unique_bucket_name = format("%s-%s", var.bucket_name, random_id.bucket_id.hex)
}

resource "google_storage_bucket" "infra-rss-summarizer" {
  project       = var.project_id
  name          = local.unique_bucket_name
  location      = var.location
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }
}
