resource "aws_internet_gateway" "ajith_igw" {

  vpc_id = var.vpc_id

  tags = {
    Name = "ajith-igw"
  }
}