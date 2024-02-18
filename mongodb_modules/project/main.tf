terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
}

resource "mongodbatlas_project" "myproject" {
  name   = var.project_name
  org_id = var.MONGODB_ATLAS_ORGANIZATION_ID
}
