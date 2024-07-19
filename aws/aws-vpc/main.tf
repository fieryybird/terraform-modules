resource "aws_vpc" "demo_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.tags.name}-vpc"
  }
}
