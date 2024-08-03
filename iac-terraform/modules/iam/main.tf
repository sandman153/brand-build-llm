resource "google_service_account" "gemini_service_account" {
  account_id = "gemini-service-account"
  display_name = "Gemini Service Account"
}

resource "google_project_iam_binding" "invoker" {
  project = var.project_id
  role = "roles/cloudfunctions.invoker"
  members = [
    "serviceAccount:${google_service_account.gemini_service_account.email}"
  ]
}

resource "google_project_iam_binding" "secret_access" {
  project = var.project_id
  role = "roles/secretmanager.secretAccessor"
  members = [
    "serviceAccount:${google_service_account.gemini_service_account.email}"
  ]
}

resource "google_project_iam_binding" "pubsub_subscriber" {
  project = var.project_id
  role = "roles/pubsub.publisher"
  members = [
    "serviceAccount:${google_service_account.gemini_service_account.email}"
  ]
}