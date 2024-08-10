/* provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = var.credentials
}
 */

 provider "google" {
  credentials = jsondecode(env("GOOGLE_CREDENTIALS"))
  project     = var.project_id
  region      = var.region
}