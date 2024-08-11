resource "google_cloudfunctions_function" "gemini_function" {
    name = "geminiFunction"
    runtime = "python39"
    entry_point = "main"
    region = var.region

    # Following set to empty values as they will be deployed later
    #source_archive_bucket = "" # Remove this line entirely during initial setup
    #source_archive_object = "" # Remove this line entirely during initial setup

    trigger_http = true

    environment_variables = {
      PROJECT_ID = var.project_id
      "ENV" = "production"
    }

    # Set memory, timeout, etc
    available_memory_mb = 256
    timeout = 60
  
}