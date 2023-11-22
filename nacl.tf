resource "aws_network_acl" "nacl" {
  vpc_id = aws_vpc.vpc.id

  dynamic "egress" {

    for_each = toset(each.value.egress)

    content {

  
        protocol   = egress.protocol
        rule_no    = egress.rule_no
        action     = egress.action
        cidr_block = egress.cidr_block
        from_port  = egress.from_port
        to_port    = egress.to_port

    }

  }


  dynamic "ingress" {

    for_each = toset(each.value.ingress)

    content {
        protocol   = ingress.protocol
        rule_no    = ingress.rule_no
        action     = ingress.action
        cidr_block = ingress.cidr_block
        from_port  = ingress.from_port
        to_port    = ingress.to_port

    }

  }

  

  tags = {
    Name = each.value.name
  }

  for_each = var.nacl
}
