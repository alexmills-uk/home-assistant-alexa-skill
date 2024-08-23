variable "home_assistant_base_url" {
  sensitive   = true
  description = "The base URL to your home assistant installation. Must be Internet-facing and include the protocol."
  type        = string
}

variable "long_lived_access_token" {
  sensitive   = true
  type        = string
  description = "A long-lived access token to allow the Lambda function to authenticate with your Home Assistant instance."
}