provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = data.local_file.sa_key.content
}

data "local_file" "sa_key" {
  filename = var.credentials_file_path
}