resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "terraform-bucket-for-state" {
  name                        = "tf-state-shahbaz"
  location                    = var.region
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
  labels = {
    "environment" = "${var.project_id}"
  }
}
terraform {
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }
}