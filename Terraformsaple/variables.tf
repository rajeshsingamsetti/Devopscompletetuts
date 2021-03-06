variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-00ddb0e5626798373" # ubuntu 14.04 LTS
		us-east-2 = "ami-0dd9f0e7df0f0a138" # ubuntu 14.04 LTS
		
    }
}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}
variable "private_subnet_cidr" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
variable "private_subnet_name" {}
variable Main_Routing_Table {}
variable Private_Routing_Table {}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "public-cidrs" {
  description = "Cidr's for subnets"
  type = "list"
  default = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24", "10.1.4.0/24", "10.1.5.0/24"]
}

variable "private-cidrs" {
  description = "Cidr's for subnets"
  type = "list"
  default = ["10.1.10.0/24", "10.1.20.0/24", "10.1.30.0/24", "10.1.40.0/24", "10.1.50.0/24"]
}

variable "environment" {  }
variable "instance_type" {
  type = "map"
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
    }
}

