output "dynamodb_role_arn" {
  description = "ARN of the DynamoDB service role"
  value       = aws_iam_role.appsync_dynamodb_role.arn
}
