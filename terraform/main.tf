module "vpc" {
  source = "../architecture/vpc"

  vpc_cidr = var.vpc_cidr
}

module "subnets" {
  source = "../architecture/subnets"

  vpc_id = module.vpc.vpc_id
}

module "igw" {
  source = "../architecture/igw"

  vpc_id = module.vpc.vpc_id
}

module "nat" {
  source = "../architecture/nat"

  public_subnet_id = module.subnets.public_subnet1_id
}

module "route_tables" {
  source = "../architecture/route-tables"

  vpc_id         = module.vpc.vpc_id
  igw_id         = module.igw.igw_id
  nat_gateway_id = module.nat.nat_gateway_id

  public_subnet1 = module.subnets.public_subnet1_id
  public_subnet2 = module.subnets.public_subnet2_id

  private_subnet1 = module.subnets.private_app_subnet1_id
  private_subnet2 = module.subnets.private_app_subnet2_id
}

module "security_group" {
  source = "../architecture/security-group"

  vpc_id = module.vpc.vpc_id
}

module "alb" {
  source = "../architecture/alb"

  vpc_id = module.vpc.vpc_id

  alb_sg = module.security_group.alb_sg_id

  public_subnet1 = module.subnets.public_subnet1_id
  public_subnet2 = module.subnets.public_subnet2_id
}

module "ec2" {
  source = "../architecture/ec2"

  ami_id   = var.ami_id
  key_name = var.key_name

  sg_id = module.security_group.app_sg_id
}

module "autoscaling" {
  source = "../architecture/autoscaling"

  launch_template_id = module.ec2.launch_template_id

  private_subnet1 = module.subnets.private_app_subnet1_id
  private_subnet2 = module.subnets.private_app_subnet2_id
}

module "rds" {
  source = "../architecture/rds"

  db_subnet1 = module.subnets.private_db_subnet1_id
  db_subnet2 = module.subnets.private_db_subnet2_id

  db_sg = module.security_group.db_sg_id
}