resource "aws_subnet" "demo_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
  tags = {
    Name = "${var.tags.name}-subnet"
  }
}

resource "aws_internet_gateway" "demo_igw" {
  vpc_id = var.vpc_id
  tags = {
    Name = "${var.tags.name}-igw"
  }
}

resource "aws_default_route_table" "demo_rtb" {
  default_route_table_id = var.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo_igw.id
  }
  tags = {
    Name = "${var.tags.name}-rtb"
  }
}