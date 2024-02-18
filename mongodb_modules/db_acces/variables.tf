
variable "cidr_block_list" {
  default = [
    #  "0.0.0.0/1",
    #  "128.0.0.0/1"
  ]
}

variable "project_id" {
  description = "The ID of the MongoDB Atlas project"
  type        = string

}
