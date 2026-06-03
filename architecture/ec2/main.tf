resource "aws_launch_template" "ajith_launch_template" {

  name_prefix = "ajith-launch-template"

  image_id = var.ami_id

  instance_type = "t3.micro"

  key_name = var.key_name

  vpc_security_group_ids = [
    var.sg_id
  ]

  tag_specifications {

    resource_type = "instance"

    tags = {
      Name = "ajith-app-server"
    }
  }
}