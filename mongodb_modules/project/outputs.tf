output "project_info" {
  value = [
  "Project name: ${mongodbatlas_project.myproject.name}"]
}


output "project_id" {
  value = mongodbatlas_project.myproject.id
}
