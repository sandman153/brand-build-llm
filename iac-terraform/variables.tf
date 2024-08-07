# Contains variables used in the project
variable "project_id" {
  description = "The project ID in GCP" 
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
#  default = "Australia/Sydney"  
}

variable "credentials_file_path" {
  description = "The path to the GCP service account credentials file"
  type = string
}