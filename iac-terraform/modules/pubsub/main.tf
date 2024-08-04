resource "google_pubsub_topic" "gemini_topic" {
  name = "gemini-topic"
}

resource "google_pubsub_subscription" "gemini_subscription" {
  name  = "gemini-subscription"
  topic = google_pubsub_topic.gemini_topic.name
}