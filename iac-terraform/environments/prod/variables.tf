variable "project_id" {
  description = "The GCP project ID" 
  type = string
  default = "sb-gemini-brand-building"
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

variable "credentials" {
  description = "The GCP service account credentials in JSON format"
  type        = string
}
