variable "project_id" {
  description = "The GCP project ID" 
  type = string
  default = "brand-build-gemini"
}

variable "region" {
    description = "The region in GCP" 
    type = string
    default = "australia-southeast1"  
}

variable "zone" {
    description = "The zone in GCP" 
    type = string
    default = "australia-southeast1-a"  
}
    
variable "time_zone" {
    description = "The time zone for the scheduler job" 
    type = string
    default = "Australia/Sydney"  
}

# variable "feedly_token" {
#     description = "Feedly token" 
#     type = string
# }

# variable "feedly_refresh_token" {
#     description = ""
#     type = string
# }

# variable "buffer_access_token" {
#     description = "Buffer access token" 
#     type = string
# }

# variable "buffer_linkedin_profile_id" {
#     type = string
# }

# variable "buffer_twitter_profile_id" {
#     type = string
# }

# variable "notion_api_token" {
#     type = string
# }

# variable "notion_database_id" {
#     type = string
# }