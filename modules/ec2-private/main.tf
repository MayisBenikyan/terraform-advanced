resource "aws_instance" "ec2-private-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id     = var.private_subnet_id
  key_name = var.key_name
  tags = {
    "Name" = var.name
  }
}