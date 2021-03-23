provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "ecs" {
  source = "./modules/ecs"

  environment          = var.environment
  cluster              = var.environment
  cloudwatch_prefix    = "${var.environment}"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  max_size             = var.max_size
  min_size             = var.min_size
  desired_capacity     = var.desired_capacity
  key_name             = aws_key_pair.ecs.key_name
  instance_type        = var.instance_type
  ecs_aws_ami          = var.aws_ecs_ami
}

resource "aws_key_pair" "ecs" {
  key_name   = "ecs-key-${var.environment}"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC812JSfSgk36wGHqsyoISKxoiPpB7AfJJAV4gaq//jI9lXsTW2b+C76rTD1hvJEWz2EuwyKUYu+2rUgrxdX9Pb02uJOIoYKW+UXxlkUHG5svBznaCF/l4okGRvU7aBBQIgF8VMd0X87bVW/fhRiZlHK4jAObkwxFTGhrvXVNVTNeIV0De0//kFqk9hrxjiHlNEwnt/UI/TJjVimm5UWnhWtz1ah0dH8CVwS+yRRTgGwIuCAPMhmnfPC7QZcxUFNiOrmQbMEunkFVE3NK0MKPNYtViLSRx7RPP72iieQWdeYaiwXWFX6P1INVkuGAJOpkfnGwbNUIKi0DWvNkQ+FmIR umair@Umairs-MacBook-Pro.local"
}

variable "environment" {
  description = "Environment name"
}
variable "aws_profile" {
  description = "aws-cli profile for the account to create resources from"
}
variable "aws_region" {
  description = "Region to create resources in"
}
variable "aws_ecs_ami" {
  description = "AMI for ecs instance or Leave empty to use the latest"
}
variable "vpc_cidr" {
  description = "Network Address range"
}
variable "public_subnet_cidrs" {
  description = "Public subnets Ranges"
  type = list
}
variable "private_subnet_cidrs" {
  description = "Private subnets range"
  type = list
}
variable "availability_zones" {
  description = "Availability zones for subnets"
  type = list
}
variable "max_size" {
  description = "Maximum instances for cluster"
}
variable "min_size" {
  description = "Minimum instances for cluster"
}
variable "desired_capacity" {
  description = "Desired instances for cluster"
}
variable "instance_type" {
  description = "Instance type"
}

output "default_alb_target_group" {
  value = module.ecs.default_alb_target_group
}
