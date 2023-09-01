# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance" {
  name             = "tower"
  region           = var.region
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }
  //Set to true for prod envs to prevent the database from being deleted
  deletion_protection  = "false"
}

resource "google_sql_database" "database" {
  name     = "tower"
  instance = google_sql_database_instance.instance.name
}
