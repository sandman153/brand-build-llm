variable "scheduler_name" {
  description = "The name of the Cloud Scheduler job"
  type        = string
}

variable "schedule" {
  description = "The cron schedule for the job"
  type        = string
}

variable "time_zone" {
  description = "The time zone for the job schedule"
  type        = string
}

variable "pubsub_topic" {
  description = "The Pub/Sub topic to trigger"
  type        = string
}