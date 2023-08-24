output "table_arn" {
  description = "ARN of the table"
  value       = aws_dynamodb_table.chat_messages.arn
}

output "table_name" {
  description = "Name of the table"
  value       = aws_dynamodb_table.chat_messages.name
}