output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet1_id" {
  value = module.subnets.public_subnet1_id
}

output "public_subnet2_id" {
  value = module.subnets.public_subnet2_id
}

output "private_app_subnet1_id" {
  value = module.subnets.private_app_subnet1_id
}

output "private_app_subnet2_id" {
  value = module.subnets.private_app_subnet2_id
}

output "private_db_subnet1_id" {
  value = module.subnets.private_db_subnet1_id
}

output "private_db_subnet2_id" {
  value = module.subnets.private_db_subnet2_id
}

output "igw_id" {
  value = module.igw.igw_id
}

output "nat_gateway_id" {
  value = module.nat.nat_gateway_id
}

output "public_rt_id" {
  value = module.route_tables.public_rt_id
}

output "private_rt_id" {
  value = module.route_tables.private_rt_id
}

output "alb_sg_id" {
  value = module.security_group.alb_sg_id
}

output "app_sg_id" {
  value = module.security_group.app_sg_id
}

output "db_sg_id" {
  value = module.security_group.db_sg_id
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "target_group_arn" {
  value = module.alb.target_group_arn
}

output "launch_template_id" {
  value = module.ec2.launch_template_id
}

output "asg_name" {
  value = module.autoscaling.asg_name
}

output "db_endpoint" {
  value = module.rds.db_endpoint
}