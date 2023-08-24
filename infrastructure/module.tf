module "localstack" {
  source = "./localstack"

  api_key     = var.localstack_api_key
  debug       = var.localstack_debug
  persistence = var.localstack_persistence
}

module "dynamodb" {
  source     = "./dynamodb"
  depends_on = [null_resource.wait_for_localstack]
}

module "iam" {
  source             = "./iam"
  dynamodb_table_arn = module.dynamodb.table_arn
}

module "appsync" {
  source = "./appsync"

  dynamodb_table_name = module.dynamodb.table_name
  dynamodb_role_arn   = module.iam.dynamodb_role_arn

  graphql_schema = file("../schema/schema.graphql")
}

