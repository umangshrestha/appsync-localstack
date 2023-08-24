locals {
  graphql_schema = "../schema/schema.graphql"
}

variable "aws_access_key" {
  type        = string
  description = "AWS_ACCESS_KEY_ID"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS_SECRET_KEY"
  sensitive   = true
}

variable "aws_region" {
  type        = string
  description = "AWS_REGION"
  sensitive   = true
  default     = "us-east-1"
}

variable "localstack_api_key" {
  type        = string
  description = "LOCALSTACK_SECRET_KEY"
  sensitive   = true
}

variable "localstack_debug" {
  type        = string
  description = "DEBUG"
  sensitive   = true
  default     = "1"
}

variable "localstack_persistence" {
  type        = string
  description = "PERSISTENCE"
  sensitive   = true
  default     = "1"
}