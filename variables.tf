variable "HOME_ASSISTANT_BASE_URL" {
  description = "The base URL to your home assistant installation. Must be Internet-facing and include the protocol."
  type        = string
}

variable "LONG_LIVED_ACCESS_TOKEN" {
  type        = string
  description = "A long-lived access token to allow the Lambda function to authenticate with your Home Assistant instance."
}