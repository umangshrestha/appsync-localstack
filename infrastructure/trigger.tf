resource "null_resource" "wait_for_localstack" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = file("../scripts/wait-for-localstack.sh")
  }
}