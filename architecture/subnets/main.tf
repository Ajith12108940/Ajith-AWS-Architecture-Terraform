resource "aws_subnet" "ajith_public_subnet1" {

  vpc_id = var.vpc_id

  cidr_block = "10.0.1.0/24"

  availability_zone = "us-west-1a"

  map_public_ip_on_launch = true

  tags = {
    Name = "ajith-public-subnet-1"
  }
}

resource "aws_subnet" "ajith_public_subnet2" {

  vpc_id = var.vpc_id

  cidr_block = "10.0.2.0/24"

  availability_zone = "us-west-1c"

  map_public_ip_on_launch = true

  tags = {
    Name = "ajith-public-subnet-2"
  }
}

resource "aws_subnet" "ajith_private_app_subnet1" {

  vpc_id = var.vpc_id

  cidr_block = "10.0.3.0/24"

  availability_zone = "us-west-1a"

  tags = {
    Name = "ajith-private-app-subnet-1"
  }
}

resource "aws_subnet" "ajith_private_app_subnet2" {

  vpc_id = var.vpc_id

  cidr_block = "10.0.4.0/24"

  availability_zone = "us-west-1c"

  tags = {
    Name = "ajith-private-app-subnet-2"
  }
}

resource "aws_subnet" "ajith_private_db_subnet1" {

  vpc_id = var.vpc_id

  cidr_block = "10.0.5.0/24"

  availability_zone = "us-west-1a"

  tags = {
    Name = "ajith-private-db-subnet-1"
  }
}

resource "aws_subnet" "ajith_private_db_subnet2" {

  vpc_id = var.vpc_id

  cidr_block = "10.0.6.0/24"

  availability_zone = "us-west-1c"

  tags = {
    Name = "ajith-private-db-subnet-2"
  }
}