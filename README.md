# Custom GCP role

A terraform module for creating custom GCP roles and assigning multiple users to the role.

## Example usage

```
module "role-name" {
  source = "git@github.com:ingka-group-digital/terraform-gcp-custom-role.git"

  id = "role-id"
  project = "your-project-id"
  title = "Role Title"
  description = "Description of the role"
  permissions = [
    "pubsub.snapshots.get",
    "pubsub.snapshots.getIamPolicy",
    "pubsub.snapshots.list",
    "pubsub.snapshots.seek",
  ]
  users = {
    "carl"="carl.sutton@ingka.ikea.com",
    }
}
```
