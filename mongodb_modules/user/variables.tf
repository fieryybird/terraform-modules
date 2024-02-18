
variable "db_user" {
  default = "enter_username"
  type    = string
}

variable "db_password" {
  default = "enter_password"
  type    = string

}

variable "auth_database" {
  default = "admin"
  type    = string
}

variable "role" {
  default = "readWrite"
  type    = string

}

variable "database_name" {
  default = "enter_db_name"
  type    = string
}


variable "project_id" {
  description = "The ID of the MongoDB Atlas project"
  type        = string

}

