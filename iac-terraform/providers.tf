# This terraform files are to provision services in GCP for the following services
# 1. Google Cloud Function
# 2. Google Cloud Pub/Sub
# 3. Google Cloud Scheduler
# 4. Google Secret Manager
# 5. Google IAM

# Set credentials for deployment

variable "project_id" {
  description = "The GCP project ID"
  type = string
}

variable "region" {
  description = "The GCP region"
  type = string
}

variable "zone" {
  description = "The GCP zone"
  type = string
}

variable "credentials_file_path" {
  description = "The path to the GCP service account credentials file"
  type = string
}

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
}

# project = "var.project_id"
# name = "build-brand-gemini"