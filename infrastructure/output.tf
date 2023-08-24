output "api_key" {
  description = "use `$ terraform output api_key` to get the value"
  value       = module.appsync.api_key
  sensitive   = true
}

output "api_url" {
  description = "API_URL"
  value       = module.appsync.api_url
}

output "ws_url" {
  description = "API_URL"
  value       = module.appsync.ws_url
}
