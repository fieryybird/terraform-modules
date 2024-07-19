output "ec2_data" {
  value = aws_instance.demo_ec2
}

output "ami_data" {
  value = data.aws_ami.latest_amazon_linux_image
}

output "sg_data" {
  value = aws_security_group.demo_sg
}

output "open_ports" {
  value = [for rule in aws_security_group_rule.demo_sg_ingress_rules : rule.from_port]
}