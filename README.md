Schema for `infrastrucre/terraform.tfvars`
```terraform
aws_access_key         = "test"
aws_secret_key         = "test"
aws_region             = "us-east-1"
localstack_api_key     = <your_api_key>
localstack_debug       = "1"
localstack_persistence = "1"
```

To initialize the infrastucture:
```bash
$ cd infrastructure
$ terraform apply --var-file=terraform.tfvars --auto-approve
```

To read api key:
```bash
$ terraform output api_key
```