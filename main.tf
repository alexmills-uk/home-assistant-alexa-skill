terraform {
  backend "s3" {}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "random_pet" "this" {
  length = 2
}

module "alexa_home_assistant" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "7.7.1"

  publish = true

  function_name = "${random_pet.this.id}-home-assistant-alexa-skill"
  handler       = "index.lambda_handler"
  runtime       = "python3.12"

  source_path = [
    "${path.module}/src/index.py"
  ]

  policy = data.aws_iam_policy.basic_execution_policy.arn

  environment_variables = {
    BASE_URL                = var.HOME_ASSISTANT_BASE_URL
    DEBUG                   = "True"
    LONG_LIVED_ACCESS_TOKEN = var.LONG_LIVED_ACCESS_TOKEN
  }
}

data "aws_iam_policy" "basic_execution_policy" {
  name = "AWSLambdaBasicExecutionRole"
}