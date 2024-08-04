module "cloud_functions" {
  source = "../../modules/cloud_functions"

  pubsub_topic = module.pubsub.topic_name
  repository_url = "https://github.com/sandman153/rss-feed-summarizer"
  branch = "main"
  region = var.region
  zone = var.zone
  project_id = var.project_id
}


module "pubsub" {
  source = "../../modules/pubsub"

  topic_name        = "gemini-topic"
  subscription_name = "gemini-subscription"
}

module "scheduler" {
  source = "../../modules/scheduler"

  scheduler_name = "geminiScheduler"
  schedule = "0 0 * * *"
  time_zone = var.time_zone
  pubsub_topic = module.pubsub.topic_name

}

module "secret_manager" {
    source = "../../modules/secret_manager"

    secrets = {
    "feedly-token"               = var.feedly_token
    "feedly-refresh-token"       = var.feedly_refresh_token
    "buffer-access-token"        = var.buffer_access_token
    "buffer-linkedin-profile-id" = var.buffer_linkedin_profile_id
    "buffer-twitter-profile-id"  = var.buffer_twitter_profile_id
    "notion-api-token"           = var.notion_api_token
    "notion-database-id"         = var.notion_database_id
  }
}

module "iam" {
    source = "../../modules/iam"

    project_id = var.project_id
}