resource "aws_instance" "public_ec2" {

  ami = var.ami_image_name

  instance_type = var.instance_type

  # the VPC subnet
  subnet_id = aws_subnet.subnets["public_subnet"].id

  # the security group
  vpc_security_group_ids = [aws_security_group.security_groups.id]

  # the public SSH key
  key_name = data.aws_key_pair.key-pair.key_name

  associate_public_ip_address = true

  tags = {
    "Name" = "public_ec2"
  }
}

resource "aws_instance" "private_ec2" {

  ami = var.ami_image_name

  instance_type = var.instance_type

  # the VPC subnet
  subnet_id = aws_subnet.subnets["private_subnet"].id

  # the security group
  vpc_security_group_ids = [aws_security_group.security_groups.id]

  # the public SSH key
  key_name = data.aws_key_pair.key-pair.key_name

  tags = {
    "Name" = "private_ec2"
  }
}