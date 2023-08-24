provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "localstack" {
  name         = "localstack/localstack-pro:latest"
  keep_locally = true
}

resource "docker_container" "localstack" {
  name  = "aws-localstack"
  image = docker_image.localstack.image_id

  ports {
    internal = 4566
    external = 4566
  }

  volumes {
    volume_name    = "localstack_volume"
    container_path = "/var/lib/localstack"
    host_path      = "/var/lib/localstack"
  }

  volumes {
    volume_name    = "docker_socket"
    container_path = "/var/run/docker.sock"
    host_path      = "/var/run/docker.sock"
  }

  env = [
    "DEBUG=${var.debug}",
    "PERSISTENCE=${var.persistence}",
    "LOCALSTACK_API_KEY=${var.api_key}",
  ]
}