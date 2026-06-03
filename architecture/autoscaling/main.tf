resource "aws_autoscaling_group" "ajith_asg" {

  name = "ajith-asg"

  desired_capacity = 2

  min_size = 2

  max_size = 4

  vpc_zone_identifier = [
    var.private_subnet1,
    var.private_subnet2
  ]

  launch_template {

    id = var.launch_template_id

    version = "$Latest"
  }

  health_check_type = "EC2"

  tag {

    key = "Name"

    value = "ajith-asg-instance"

    propagate_at_launch = true
  }
}