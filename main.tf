variable "id" {
    description = "The id of the role"
}

variable "title" {
    description = "The title of the role"
}

variable "description" {
    description = "The description of the role"
}

variable "project" {
    description = "The project id"
}

variable "permissions" {
    description = "The permissions of the role"
}

variable "users" {
    description = "The permissions of the role"
}

resource "google_project_iam_custom_role" "role" {
  role_id = var.id
  title = var.title
  description = var.description
  permissions = var.permissions
}

resource "google_project_iam_member" "users" {
  for_each = var.users

  role = "projects/${var.project}/roles/${google_project_iam_custom_role.role.role_id}"
  member = "user:${each.value}"
}

output "id" {
    value = google_project_iam_custom_role.role.role_id
}