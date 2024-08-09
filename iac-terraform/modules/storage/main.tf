resource "google_storage_bucket" "infra-rss-summarizer" {
   name = var.bucket_name
   location = var.location  
}