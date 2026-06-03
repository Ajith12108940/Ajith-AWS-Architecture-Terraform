resource "aws_lb" "ajith_alb" {

  name = "ajith-alb"

  internal = false

  load_balancer_type = "application"

  security_groups = [
    var.alb_sg
  ]

  subnets = [
    var.public_subnet1,
    var.public_subnet2
  ]

  tags = {
    Name = "ajith-alb"
  }
}

resource "aws_lb_target_group" "ajith_tg" {

  name = "ajith-tg"

  port = 80

  protocol = "HTTP"

  vpc_id = var.vpc_id

  health_check {
    path = "/"
  }

  tags = {
    Name = "ajith-target-group"
  }
}

resource "aws_lb_listener" "ajith_listener" {

  load_balancer_arn = aws_lb.ajith_alb.arn

  port = 80

  protocol = "HTTP"

  default_action {

    type = "forward"

    target_group_arn = aws_lb_target_group.ajith_tg.arn
  }
}