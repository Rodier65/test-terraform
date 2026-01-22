variable "filename" {
  description = "The name of the file to be created"
  type        = string
}

variable "filecontent" {
  description = "The content to be written to the file"
  type        = string
  default     = "This is a sample file created by Terraform."
}
variable "folder" {
  description = "The name of the folder to be created"
  type        = string
  
}
variable "directory_permission" {
  description = "The permission to set on the created directory"
  type        = string
}

variable "file_permission" {
  description = "The permission to set on the created file"
  type        = string
  
}



