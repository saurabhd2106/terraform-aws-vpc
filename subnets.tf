resource "aws_subnet" "subnets" {

  vpc_id = aws_vpc.vpc.id

  cidr_block = each.value.cidr_block

  tags = {
    "Name" = each.key
  }

  for_each = var.subnets
}

