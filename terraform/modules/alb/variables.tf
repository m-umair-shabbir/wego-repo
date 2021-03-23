variable "alb_name" {
  default     = "default"
  description = "Loadbalancer Name"
}

variable "environment" {
  description = "Environment"
}

variable "public_subnet_ids" {
  type        = list
  description = "List of public subnet ids to place the loadbalancer"
}

variable "vpc_id" {
  description = "VPC id"
}

variable "deregistration_delay" {
  default     = "300"
  description = "deregistration delay"
}

variable "health_check_path" {
  default     = "/"
  description = "health check path"
}

variable "allow_cidr_block" {
  default     = ["0.0.0.0/0"]
  description = "cidr block to allow traffic from"
}
