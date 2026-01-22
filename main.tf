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
  filename = "${path.module}/${var.folder}/.gitkeep"
  content = ""
  directory_permission = var.directory_permission  
}

resource "local_file" "create_file" {
  filename = "${path.module}/${var.folder}/${var.filename}"
  content  = var.filecontent
  file_permission = var.file_permission

depends_on = [ local_file.create_directory ]
}
