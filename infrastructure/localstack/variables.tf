variable "api_key" {
  type        = string
  description = "LOCALSTACK_SECRET_KEY"
  sensitive   = true
}

variable "debug" {
  type        = string
  description = "DEBUG"
  sensitive   = true
}

variable "persistence" {
  type        = string
  description = "PERSISTENCE"
  sensitive   = true
}