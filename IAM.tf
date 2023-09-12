resource "google_service_account" "tower-compute" {
  account_id   = "tower-compute"
  display_name = "tower-compute"
  project     = var.project_id
}

resource "google_project_iam_member" "tower-compute-member" {
  project = var.project_id
  role   = "roles/container.admin"  # this should be more fine grained for K8s compute
  member = "serviceAccount:${google_service_account.tower-compute.email}"
}

# resource "local_file" "myaccountjson" {
# content     = base64decode(google_service_account.tower-compute.)
# filename = "./tower-compute.json"
# }