variable "environment" {
  description = "Environment Name"
}

variable "cluster" {
  default     = "default"
  description = "ECS cluster Name"
}

variable "prefix" {
  default     = ""
  description = "prefix of the parameters"
}
