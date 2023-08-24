provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region


  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway     = module.localstack.localstack_endpoint
    apigatewayv2   = module.localstack.localstack_endpoint
    appsync        = module.localstack.localstack_endpoint
    cloudformation = module.localstack.localstack_endpoint
    cloudwatch     = module.localstack.localstack_endpoint
    dynamodb       = module.localstack.localstack_endpoint
    ec2            = module.localstack.localstack_endpoint
    es             = module.localstack.localstack_endpoint
    firehose       = module.localstack.localstack_endpoint
    iam            = module.localstack.localstack_endpoint
    kinesis        = module.localstack.localstack_endpoint
    lambda         = module.localstack.localstack_endpoint
    rds            = module.localstack.localstack_endpoint
    redshift       = module.localstack.localstack_endpoint
    route53        = module.localstack.localstack_endpoint
    s3             = module.localstack.localstack_s3_bucket_endpoint
    secretsmanager = module.localstack.localstack_endpoint
    ses            = module.localstack.localstack_endpoint
    sns            = module.localstack.localstack_endpoint
    sqs            = module.localstack.localstack_endpoint
    ssm            = module.localstack.localstack_endpoint
    stepfunctions  = module.localstack.localstack_endpoint
    sts            = module.localstack.localstack_endpoint
  }
}