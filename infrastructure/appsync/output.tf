output "api_key" {
  description = "x-api-key required for all requests"
  value       = aws_appsync_api_key.api_key.key
  sensitive   = true
}

output "name" {
  description = "Name of the AppSync API"
  value       = aws_appsync_graphql_api.appsync.arn
}

output "api_url" {
  description = "API_URL"
  value       = aws_appsync_graphql_api.appsync.uris["GRAPHQL"]
}

output "ws_url" {
  description = "API_URL"
  value       = aws_appsync_graphql_api.appsync.uris["REALTIME"]
}
