terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.6.1"
    }
  }
}

provider "local" {}

resource "local_file" "create_directory" {
  filename = "${path.module}/my-directory/.gitkeep"
  content = ""
  directory_permission = var.directory_permission
}

resource "local_file" "create_file" {
  filename = "${path.module}/my-directory/${var.filename}"
  content  = var.content
  file_permission = "0644"
}
