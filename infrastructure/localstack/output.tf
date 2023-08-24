locals {
  localstack_port = docker_container.localstack.ports[0].external
}

output "localstack_endpoint" {
  description = "Localstack host"
  value       = "http://127.0.0.1:${local.localstack_port}"
}

output "localstack_s3_bucket_endpoint" {
  description = "Localstack S3 host"
  value       = "http://s3.localhost.localstack.cloud:${local.localstack_port}"
}

