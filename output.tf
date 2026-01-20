output "create-directory-output" {
  value = local_file.create_directory.filename
}

output "create-file-output" {
  value = local_file.create_file.content
}

output "file_permission-output" {
  description = "show the permission on my file"
  value = local_file.create_file.file_permission
}