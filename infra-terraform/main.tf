terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {}

# Déclaration de l'image Docker à utiliser
resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = false
}

# Déclaration du conteneur
resource "docker_container" "nginx_tf" {
  image = docker_image.nginx.image_id
  name  = "serveur-web-terraform"
  ports {
    internal = 80
    external = 8081
  }
}
