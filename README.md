# Custom GCP role

A terraform module for creating custom GCP roles and assigning multiple users to the role.

## Example usage

```
module "development" {
  source = "/modules/custom-role"

  id = "development"
  project = var.project
  title = "Developer Account"
  description = "Generic developer role that will allow view access for most resources"
  permissions = var.developers.permissions
  users = var.developers.users
}
```
