output "topic_name" {
    value = google_pubsub_topic.gemini_topic.name
}

output "subscription_name" {
    value = google_pubsub_subscription.gemini_subscription.name
}