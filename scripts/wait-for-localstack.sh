#!/bin/bash
until awslocal --endpoint-url=http://localhost:4566 sqs list-queues; do
  >&2 echo "Localstack is unavailable - sleeping"
  sleep 1
done