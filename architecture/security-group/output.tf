output "alb_sg_id" {
  value = aws_security_group.ajith_alb_sg.id
}

output "app_sg_id" {
  value = aws_security_group.ajith_app_sg.id
}

output "db_sg_id" {
  value = aws_security_group.ajith_db_sg.id
}