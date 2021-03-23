#Environment name
environment = "wego-test"

#aws-cli profile for the account to create resources from
aws_profile = "default"

#Region to create resources in
aws_region = "us-west-1"

#AMI for ecs instance or Leave empty to use the latest
aws_ecs_ami = ""

#Network Address range
vpc_cidr = "10.0.0.0/16"

#Public subnets Ranges
public_subnet_cidrs = ["10.0.0.0/24", "10.0.1.0/24"]

#Private subnets range
private_subnet_cidrs = ["10.0.50.0/24", "10.0.51.0/24"]

#Availability zones for subnets
availability_zones = ["us-west-1c", "us-west-1b"]

#Maximum instances for cluster
max_size = 1

#Minimum instances for cluster
min_size = 1

#Desired instances for cluster
desired_capacity = 1

#Instance type
instance_type = "t2.micro"
