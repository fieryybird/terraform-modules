terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
}

resource "mongodbatlas_cluster" "mycluster" {
  project_id = var.project_id
  name       = var.cluster_name

  provider_name               = "TENANT"
  backing_provider_name       = var.cloud_provider
  provider_region_name        = var.region
  provider_instance_size_name = var.instance
}
