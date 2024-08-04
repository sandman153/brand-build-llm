# This terraform files are to provision services in GCP for the following services
# 1. Google Cloud Function
# 2. Google Cloud Pub/Sub
# 3. Google Cloud Scheduler
# 4. Google Secret Manager
# 5. Google IAM

# Set credentials for deployment

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.39.1"
    }
  }
}

provider "google" {
    project     = var.project_id
    region      = var.region
    zone        = var.zone
    credentials = file(var.credentials_file_path)
}

# project = "var.project_id"
# name = "build-brand-gemini"