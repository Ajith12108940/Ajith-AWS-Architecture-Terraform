resource "aws_route_table" "ajith_public_rt" {

  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"

    gateway_id = var.igw_id
  }

  tags = {
    Name = "ajith-public-rt"
  }
}

resource "aws_route_table" "ajith_private_rt" {

  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"

    nat_gateway_id = var.nat_gateway_id
  }

  tags = {
    Name = "ajith-private-rt"
  }
}

resource "aws_route_table_association" "ajith_public_assoc1" {

  subnet_id = var.public_subnet1

  route_table_id = aws_route_table.ajith_public_rt.id
}

resource "aws_route_table_association" "ajith_public_assoc2" {

  subnet_id = var.public_subnet2

  route_table_id = aws_route_table.ajith_public_rt.id
}

resource "aws_route_table_association" "ajith_private_assoc1" {

  subnet_id = var.private_subnet1

  route_table_id = aws_route_table.ajith_private_rt.id
}

resource "aws_route_table_association" "ajith_private_assoc2" {

  subnet_id = var.private_subnet2

  route_table_id = aws_route_table.ajith_private_rt.id
}