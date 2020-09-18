# Custom GCP role

A terraform module for creating custom GCP roles and assigning multiple users to the role.

## Example usage

```
module "role-name" {
  source = "github.com/velith/terraform-gcp-custom-role"

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
    "me"="first.lastname@example.com",
    }
}
```
