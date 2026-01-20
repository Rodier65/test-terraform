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
  directory_permission = "0644"
}

resource "local_file" "create_file" {
  filename = "${path.module}/my-directory/patou.txt"
  content  = "This is a sample file created by Terraform."
  file_permission = "0644"
}
