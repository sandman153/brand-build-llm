module "pubsub" {
  source = "./pubsub"
  topic_name = var.pubsub_topic_name
  subscription_name = var.pubsub_subscription_name
}

module "cloud_functions" {
  source = "./cloud_functions"
  project_id = var.project_id
  source_bucket_name = var.source_bucket_name
  source_archive_path = var.source_archive_path
  pubsub_topic_name = module.pubsub.topic_name
  region = var.region
}

module "scheduler" {
  source = "./scheduler"
  scheduler_name = var.scheduler_name
  schedule = var.schedule
  time_zone = var.time_zone
  pubsub_topic = module.pubsub.topic_name
}

module "secret_manager" {
    source = "./secret_manager"
    secrets = {
    "feedly-token"               = "YOUR_FEEDLY_TOKEN",
    "buffer-access-token"        = "YOUR_BUFFER_ACCESS_TOKEN",
    "buffer-linkedin-profile-id" = "YOUR_LINKEDIN_PROFILE_ID",
    "buffer-twitter-profile-id"  = "YOUR_TWITTER_PROFILE_ID",
    "notion-api-token"           = "YOUR_NOTION_API_TOKEN",
    "notion-database-id"         = "YOUR NOTION_DATABASE_ID"
  }
}

module "iam" {
    source = "./iam"
    project_id = var.project_id
}