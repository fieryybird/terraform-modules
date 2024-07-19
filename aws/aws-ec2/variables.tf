variable "instance_type" {type = string}
variable "ami_name" {type = string}

variable "vpc_id" {type = string}
variable "subnet_id" {type = string}
variable "get_public_ip" {type = bool}

variable "sg_allowed_ports" {type = list(string)}
variable "entry_script" {type = string}

variable "key_name" {type = string}
variable "public_sshkey_location" {type = string}
variable "private_sshkey_location" {type = string}

variable "tags" {type = map(any)}
variable "availability_zone" {type = string}
