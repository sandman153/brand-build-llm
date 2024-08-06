provider "google" {
    project     = var.project_id
    region      = var.region
    zone        = var.zone
    credentials = file(var.credentials_file_path)
}