variable "filename" {
  description = "The name of the file to be created"
  type        = string
}

variable "content" {
  description = "The content to be written to the file"
  type        = string
  default     = "This is a sample file created by Terraform."
}

variable "directory_permission" {
  description = "The permission to set on the created directory"
  type        = string
  default     = "0755"
}