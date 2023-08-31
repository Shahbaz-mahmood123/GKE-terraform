#Load balancer is not needed with an ingress in GCP, https://cloud.google.com/kubernetes-engine/docs/concepts/ingress#:~:text=networking%20overview.-,When,-you%20create%20an



# resource "kubernetes_ingress" "ingress" {
#   metadata {
#     name = "ingress"
#     annotations = {
#       "kubernetes.io/ingress.class" : "gce"
#     }
#   }

#   spec {
#     rule {
#       http {
#         path {
#           backend {
#             service_name = "Tower"
#             service_port = 80
#           }
#         }
#       }
#     }
#   }
# }

# resource "google_compute_backend_service" "backend_service" {
#   name        = "tower-load-balancer"
#   protocol    = "HTTP"
#   timeout_sec = 30

#   backend {
#     group = google_compute_instance_group.my_instance_group.self_link
#   }
# }

# resource "google_compute_instance_group" "my_instance_group" {
#   name        = "tower"
#   description = "tower instance group"
#   zone        = "us-central1"
#   network     = "${var.project_id}-vpc"
#   instances   = ["tower-loadbalancer"]
# }

# resource "google_compute_http_health_check" "health_check" {
#   name               = "tower-health-check"
#   request_path       = "/"
#   check_interval_sec = 5
#   timeout_sec        = 5
# }

# resource "google_compute_target_http_proxy" "http_proxy" {
#   name        = "tower-http-proxy"
#   url_map     = google_compute_url_map.url_map.self_link
#   description = "tower HTTP proxy"
# }

# resource "google_compute_url_map" "url_map" {
#   name        = "tower-url-map"
#   default_service = google_compute_backend_service.backend_service.self_link
# }

# resource "google_compute_global_forwarding_rule" "forwarding_rule" {
#   name       = "tower forwarding rule"
#   target     = google_compute_target_http_proxy.http_proxy.self_link
#   port_range = "80"
# }