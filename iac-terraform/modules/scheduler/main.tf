resource "google_cloud_scheduler_job" "gemini_scheduler" {
    name = var.scheduler-name
    description = "Periodic job to trigger the Gemini function"
    schedule = var.schedule
    time_zone = var.time_zone

    pubsub_target {
      topic_name = var.pubsub_topic
      data = jsondecode({message = "Trigger Function"})
    }

  
}