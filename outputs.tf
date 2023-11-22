output "public_ip_address" {
  value = aws_instance.public_ec2.public_ip
}

output "private_ip_address" {
  value = aws_instance.public_ec2.private_ip
}

output "private_ip_address_of_vm2" {
  value = aws_instance.private_ec2.private_ip
}