terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
}

resource "mongodbatlas_database_user" "admin" {
  username           = var.db_user
  password           = var.db_password
  project_id         = var.project_id
  auth_database_name = var.auth_database

  roles {
    role_name     = var.role
    database_name = var.database_name
  }
}
