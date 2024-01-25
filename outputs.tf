output "instance id" {
  description = "ID of the EC2 instance"
  value = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the Ec2 instance"
  value = aws_instance.app_server.public_ip
}
