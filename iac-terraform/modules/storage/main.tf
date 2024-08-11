resource "google_storage_bucket" "infra-rss-summarizer" {
   project = var.project_id
   name = var.bucket_name
   location = var.location  
}