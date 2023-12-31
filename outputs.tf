output "region" {
  value       = var.region
  description = "GCloud Region"
}

output "zone" {
  value = var.zone
  description = "Zone cluster was deployed to if zonal cluster"
}

output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Host"
}

output "storage_bucket_name" {
  value       = google_storage_bucket.terraform-bucket-for-state.name
  description = "Terraform state bucket name"
}

output "MySQL_database" {
  value       = google_sql_database_instance.instance.id
  description = "Database ID"
}

output "google_compute_service_account_name" {
  value = google_service_account.tower-compute.name
  description = "Compute service account name"
}

output "google_compute_service_account_id" {
  value = google_service_account.tower-compute.id
  description = "Compute service account id"
}


# output "k8s-role-id" {
#   value       = google_organization_iam_custom_role.k8s-role.id
#   description = "k8s compute role id"
# }

# output "k8s-role-name" {
#   value       = google_organization_iam_custom_role.k8s-role.name
#   description = "k8s compute role name"
# }

# output "load_balancer_backend_service" {
#   value       = google_compute_backend_service.backend_service.id
#   description = "Load balancer backend service ID"
# }
# output "load_balancer_instance_group" {
#   value       = google_compute_instance_group.my_instance_group.id
#   description = "Load balancer backend service ID"
# }

# output "load_balancer_proxy" {
#   value       = google_compute_target_http_proxy.http_proxy.id
#   description = "Load balancer http proxy ID"
# }

# output "load_balancer_url_map" {
#   value       = google_compute_url_map.url_map.id
#   description = "Load balancer url map ID"
# }
# output "load_balancer_forwarding_rule" {
#   value       = google_compute_global_forwarding_rule.forwarding_rule.id
#   description = "Load balancer fowarding rule ID"
# }