output "instance_id" {
  value = aws_instance.ec2-private-instance.id
}

output "private_ip" {
  value = aws_instance.ec2-private-instance.private_ip
}