output "user_info" {
  value = [
    "Username = ${mongodbatlas_database_user.admin.username}",
    "Database acces = ${join(", ", [for role in mongodbatlas_database_user.admin.roles : role.database_name])}",
    "Permissions = ${join(", ", [for role in mongodbatlas_database_user.admin.roles : role.role_name])}"
  ]
}
