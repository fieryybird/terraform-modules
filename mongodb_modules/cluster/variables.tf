variable "cluster_name" {
  default = "mycluster"
  type    = string
}

variable "region" {
  default = "US_EAST_1"
  type    = string
}

variable "project_id" {
  description = "The ID of the MongoDB Atlas project"
  type        = string

}

variable "cloud_provider" {
  default = "AWS"
  type    = string
}

variable "instance" {
  default = "M0"
  type    = string
}
