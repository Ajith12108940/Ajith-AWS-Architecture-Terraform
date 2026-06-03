resource "aws_db_subnet_group" "ajith_db_subnet_group" {

  name = "ajith-db-subnet-group"

  subnet_ids = [
    var.db_subnet1,
    var.db_subnet2
  ]

  tags = {
    Name = "ajith-db-subnet-group"
  }
}

resource "aws_db_instance" "ajith_rds" {

  identifier = "ajith-rds"

  allocated_storage = 20

  storage_type = "gp2"

  engine = "mysql"

  engine_version = "8.0"

  instance_class = "db.t3.micro"

  username = "admin"

  password = "Admin12345"

  multi_az = true

  db_subnet_group_name = aws_db_subnet_group.ajith_db_subnet_group.name

  vpc_security_group_ids = [
    var.db_sg
  ]

  skip_final_snapshot = true

  publicly_accessible = false

  tags = {
    Name = "ajith-rds"
  }
}