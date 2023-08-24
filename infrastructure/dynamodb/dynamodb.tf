resource "aws_dynamodb_table" "chat_messages" {
  name         = "ChatMessages"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "dev"
  }
}