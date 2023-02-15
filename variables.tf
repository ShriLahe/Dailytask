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
