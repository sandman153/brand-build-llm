resource "google_cloudfunctions_function" "gemini_function" {
    name = "geminiFunction"
    runtime = "python39"
    entry_point = main
    source_archive_bucket = "gs://${var.source_bucket_name}"
    source_archive_object = var.source.archive_path
    event_trigger {
        event_type = "google.pubsub.topic.publish"
        resource = "projects/${var.project_id}/topics/${var.topic_name}"
    }

    environment_variables = {
      PROJECT_ID = var.project_id
    }
  
}