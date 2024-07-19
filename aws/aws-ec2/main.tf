resource "aws_security_group" "demo_sg" {
  vpc_id = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.tags.name}-sg"
  }
}

resource "aws_security_group_rule" "demo_sg_ingress_rules" {
  security_group_id = aws_security_group.demo_sg.id
  type              = "ingress"
  protocol          = "tcp"

  for_each    = toset(var.sg_allowed_ports)
  from_port   = each.value
  to_port     = each.value
  cidr_blocks = ["0.0.0.0/0"]
}

data "aws_ami" "latest_amazon_linux_image" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = [var.ami_name]
  }
}

resource "aws_instance" "demo_ec2" {
  availability_zone = var.availability_zone
  ami               = data.aws_ami.latest_amazon_linux_image.id
  instance_type     = var.instance_type

  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.demo_sg.id]
  associate_public_ip_address = var.get_public_ip

  key_name = var.key_name

  user_data = file(var.entry_script) 

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > public_ip.txt"
  }

  tags = {
    Name = "${var.tags.name}-server"
  }
}