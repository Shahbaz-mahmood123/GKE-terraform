# resource "google_organization_iam_custom_role" "k8s-role" {
#   role_id     = "towerK8sRole"
#   org_id      = "123456789"
#   title       = "k8s-compute"
#   description = "A description"
#   permissions = ["iam.roles.list", "iam.roles.create", "iam.roles.delete", "iam.roles.container.admin"]
# }

# resource "google_service_account" "tower-compute" {
#   account_id = "tower-compute"
#   display_name = "SA"
# }

# resource "google_project_iam_member" "tower-gke-compute" {
#   project = var.project_id
#   role    = "roles/datastore.owner"
#   member  = "serviceAccount:${google_service_account.tower-compute.email}"
# }