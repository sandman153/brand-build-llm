resource "google_cloud_scheduler_job" "gemini_scheduler" {
  name        = var.scheduler_name
  description = "Periodic job to trigger the gemini function"
  schedule    = var.schedule
  time_zone   = var.time_zone
  pubsub_target {
    topic_name = var.pubsub_topic
    data       = jsonencode({ message = "Trigger Function" })
  }
}