terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
}

resource "mongodbatlas_project_ip_access_list" "cidr" {
  for_each   = toset(var.cidr_block_list)
  project_id = var.project_id
  cidr_block = each.value
  comment    = "Open access for IP range ${each.value}"
}
