data "aws_iam_policy_document" "dynamodb_read_write" {
  statement {
    effect = "Allow"

    actions = [
      "dynamodb:BatchGetItem",
      "dynamodb:BatchWriteItem",
      "dynamodb:ConditionCheckItem",
      "dynamodb:DeleteItem",
      "dynamodb:GetItem",
      "dynamodb:GetRecords",
      "dynamodb:PutItem",
      "dynamodb:Query",
      "dynamodb:Scan",
      "dynamodb:UpdateItem",
    ]

    resources = [
      var.dynamodb_table_arn
    ]
  }
}

resource "aws_iam_role" "appsync_dynamodb_role" {
  name               = "AppSyncDynamoDB"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role_policy" "appsync_dynamodb_policy" {
  name   = "AppSyncDynamoDB"
  role   = aws_iam_role.appsync_dynamodb_role.id
  policy = data.aws_iam_policy_document.dynamodb_read_write.json
}
