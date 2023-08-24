resource "aws_appsync_graphql_api" "appsync" {
  name                = "appsync"
  authentication_type = "API_KEY"
  schema              = var.graphql_schema
}

resource "aws_appsync_datasource" "dynamodb" {
  api_id = aws_appsync_graphql_api.appsync.id
  name   = "appsync"
  type   = "AMAZON_DYNAMODB"

  dynamodb_config {
    table_name = var.dynamodb_table_name
  }
}

resource "aws_appsync_datasource" "none" {
  api_id = aws_appsync_graphql_api.appsync.id
  name   = "none"
  type   = "NONE"

  dynamodb_config {
    table_name = var.dynamodb_table_name
  }
}


resource "aws_appsync_api_key" "api_key" {
  api_id = aws_appsync_graphql_api.appsync.id
}
