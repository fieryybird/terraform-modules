output "subnet_data" {
  value = aws_subnet.demo_subnet
}

output "igw_data" {
  value = aws_internet_gateway.demo_igw
}

output "default_rtb_data" {
  value = aws_default_route_table.demo_rtb
}

