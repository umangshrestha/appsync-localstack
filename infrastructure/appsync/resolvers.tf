resource "aws_appsync_resolver" "dynamodb_resolver" {
  for_each = {
    "message"       = { type = "Query" },
    "messages"      = { type = "Query" },
    "createMessage" = { type = "Mutation" },
    "deleteMessage" = { type = "Mutation" },
  }

  api_id            = aws_appsync_graphql_api.appsync.id
  field             = each.key
  type              = each.value.type
  data_source       = aws_appsync_datasource.dynamodb.name
  request_template  = file("../resolvers/${each.value.type}.${each.key}.req.vtl")
  response_template = file("../resolvers/${each.value.type}.${each.key}.res.vtl")
}


resource "aws_appsync_resolver" "none_resolver" {
  for_each = {
    "hello"         = { type = "Query" },
  }

  api_id            = aws_appsync_graphql_api.appsync.id
  field             = each.key
  type              = each.value.type
  data_source       = aws_appsync_datasource.none.name
  request_template  = file("../resolvers/${each.value.type}.${each.key}.req.vtl")
  response_template = file("../resolvers/${each.value.type}.${each.key}.res.vtl")
}