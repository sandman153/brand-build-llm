output "topic_name" {
    value = google_pubsub_topic.gemini-topic.name
}

output "subscription_name" {
    value = google_pubsub_subscription.gemini-subscription.name
}