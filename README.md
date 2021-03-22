#Tera from fro AWS-ECS Cluser Provisioning Terraform CLI version 0.9.5 Required

#Resouces which will be created
-> ECS Cluster
-> VPC
-> 2 Private Subent
-> 2 Public Subent
-> Autoscaling Group
-> Load Balancer
-> Target Grup

#IAM Permission Required to RUN this
-> ElasticLoadBalancingFullAccess
-> CloudWatchLogsFullAccess
-> AmazonECS_FullAccess
-> AmazonVPCFullAccess
-> IAMUserSSHKeys


## Usage:

#Specify the following varibale in ecs.tfvars create resources into.
-> environment = [Environmet Name]
-> aws_profile = [aws profile to use provision infra]
-> aws_region = [aws region to provisio infra]
-> aws_ecs_ami = [ami to use for ecs]
-> vpc_cidr = [vpc ip range cidr blcok]
-> public_subnet_cidrs = [ip ranges for public subents]
-> private_subnet_cidrs = [ip ranges for private subents]
-> availability_zones = [availability zones for infra mention to for high availability]
-> max_size = [max nodes to run]
-> min_size = [minimum nodes to run]
-> desired_capacity = [desired capacity]
-> instance_type = [instance type]

## Terraform module
I am going to create infra in modules so it can be reuseable following are detal of each moduels 

alb: creating application load balancer to connect with ecs instance to expose service over the internet

ecs_instances: creaing ecs instance with latest Linux 2 ECS-optimized AMI

nat_gateway: creating nat gateway to give internet access to ecs instances

subnet: i am creating subnet with this moudle also creating routing talbe route to route traffic over the inernet

vpc: creating vpc with menitoned environment name and cidr block.

ecs_events: creating events in sns topic with clodu watch

users: this user can give roles to ECS tasks. In theory the user can give the task Admin rights. To make sure that does not happen we restrict the user and allow him only to hand out roles in /ecs/ path. You still need to be careful not to have any roles in there with full admin rights, but no ECS task should have these rights!

## Creating Infra

#following  command is used to download and update modules mentioned in the root
terraform get

#following command is used to create an execution plan.
terraform plan -input=false -var-file=ecs.tfvars

#following command is used to apply the changes and finally prvision infra
terraform apply -input=false -var-file=ecs.tfvars
