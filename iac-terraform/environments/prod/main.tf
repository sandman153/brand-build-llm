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

module "iam" {
    source = "../../modules/iam"

    project_id = var.project_id
}