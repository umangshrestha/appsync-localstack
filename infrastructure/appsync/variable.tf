variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "graphql_schema" {
  description = "GraphQL schema"
  type        = string
}

variable "dynamodb_role_arn" {
  type = string
}
