resource "google_storage_bucket" "function_bucket" {
    name = var.source_bucket_name
    location = var.region
}

resource "google_storage_bucket_object" "function_archive" {
    name = var.source.archive_path
    bucket = google_storage_bucket.function_bucket.name
    source = var.source.archive_path
}



resource "google_cloudfunctions_function" "gemini_function" {
    name = "geminiFunction"
    runtime = "python39"
    entry_point = "main"
    source_archive_bucket = "gs://${var.source_bucket_name}"
    source_archive_object = var.source.archive_path
    event_trigger {
        event_type = "google.pubsub.topic.publish"
        resource = var.pubsub_topic_name
    }

    environment_variables = {
      PROJECT_ID = var.project_id
    }
  
}