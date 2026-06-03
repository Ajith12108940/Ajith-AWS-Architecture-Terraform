resource "aws_eip" "ajith_nat_eip" {

  domain = "vpc"

  tags = {
    Name = "ajith-nat-eip"
  }
}

resource "aws_nat_gateway" "ajith_nat_gateway" {

  allocation_id = aws_eip.ajith_nat_eip.id

  subnet_id = var.public_subnet_id

  tags = {
    Name = "ajith-nat-gateway"
  }
}