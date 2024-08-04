resource "google_cloudfunctions_function" "gemini_function" {
    name = "geminiFunction"
    runtime = "python39"
    entry_point = "main"
    source_repository {
        url = var.repository_url
    }
    event_trigger {
        event_type = "google.pubsub.topic.publish"
        resource = var.pubsub_topic
    }

    environment_variables = {
      PROJECT_ID = var.project_id
    }
  
}