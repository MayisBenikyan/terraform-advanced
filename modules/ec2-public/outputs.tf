output "instance_id" {
  value = aws_instance.ec2-public-instance.id
}

output "public_ip" {
  value = aws_instance.ec2-public-instance.public_ip
}