output "access_is_open_to_IP" {
  value = [
    for ip in mongodbatlas_project_ip_access_list.cidr :
    "CIDR block: ${ip.cidr_block}"
  ]
}
