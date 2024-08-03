output "url" {
    value = google_cloudfunctions_function.gemini_function.https_trigger_url  
}