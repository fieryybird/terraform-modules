resource "aws_key_pair" "public_ssh_key" {
  key_name   = var.key_name
  public_key = file(var.public_sshkey_location)
}


