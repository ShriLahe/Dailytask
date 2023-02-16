variable "aws_region" {
  description = "Provide AWS region"
  type = string
  default = "ap-south-1"
}


variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
  description = "Public Subnet CIDR Values"
}

variable "private_subnet_cidrs" {
  type = list
  default = [ "10.0.4.0/24", "10.0.5.0/24" ]
  description = "Private Subnet CIDR Values"
}

variable "azs" {
  type        = list
  description = "Availability Zones"
  default     = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}