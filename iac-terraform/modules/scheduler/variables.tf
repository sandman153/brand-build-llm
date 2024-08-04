variable "scheduler_name" {
    type = string
    default = "gemini-scheduler"
}

variable "schedule" {
    type = string
}

variable "time_zone" {
    type = string
}

variable "pubsub_topic" {
  description = "The Pub/Sub topic to trigger"
  type        = string
}
