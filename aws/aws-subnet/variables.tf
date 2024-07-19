variable "vpc_id" {type = string}
variable "subnet_cidr_block" {type = string}
variable "default_route_table_id" {type = string}

variable "tags" {type = map(any)}
variable "availability_zone" {type = string}
