resource "aws_instance" "ajith_ec2" {
  ami           = "ami-0138ef89268eafec8"
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  key_name      = var.key_name

  vpc_security_group_ids = [
    var.security_group_id
  ]

  associate_public_ip_address = true

  tags = {
    Name = "ajith-ec2"
  }
}