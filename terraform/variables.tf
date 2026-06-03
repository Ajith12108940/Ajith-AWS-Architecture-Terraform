variable "aws_region" {
  default = "us-west-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "key_name" {
  default = "AjithKeypair"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI"
}