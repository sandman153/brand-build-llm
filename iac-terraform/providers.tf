# This terraform files are to provision services in GCP for the following services
# 1. Google Cloud Function
# 2. Google Cloud Pub/Sub
# 3. Google Cloud Scheduler
# 4. Google Secret Manager
# 5. Google IAM

# Set credentials for deployment

provider "google" {
    project     = var.project_id
    region      = var.region
    zone        = var.zone
}

terraform {
  required_version = ">= 0..13"
  backend "gcs" {
    bucket = "BUCKET_NAME"
    prefix = "terraform/state"
  }
}


# project = "var.project_id"
# name = "build-brand-gemini"