resource "google_pubsub_topic" "gemini-topic" {
  name = var.topic_name

}

resource "google_pubsub_subscription" "gemini-subscription" {
  name = var.subscription_name
  topic = google_pubsub_topic.gemini-topic.name
}