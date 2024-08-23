# HomeAssistant Alexa Skill

This repository contains Terraform to deploy and manage a Lambda function, which is triggered by an Alexa Skill. It tries to automate the [HomeAssistant Alexa Smart Home Skill](https://www.home-assistant.io/integrations/alexa.smart_home/#requirements) guide on home-assistant.io. 
The Alexa skill to allow integration with HomeAssistant, without the use (and subscription cost) of Nabu Casa - HomeAssistant's cloud offering.

Essentially, it creates a Lambda function which is triggered by the Alexa skill, and the Lambda function acts as a bridge between Alexa and Home Assistant by triggering the Home Assistant API.