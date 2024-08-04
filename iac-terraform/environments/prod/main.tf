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
    "feedly-token"               = "1"
    "feedly-refresh-token"       = "2"
    "buffer-access-token"        = "3"
    "buffer-linkedin-profile-id" = "4"
    "buffer-twitter-profile-id"  = "5"
    "notion-api-token"           = "6"
    "notion-database-id"         = "7"
  }
}

module "iam" {
    source = "../../modules/iam"

    project_id = var.project_id
}