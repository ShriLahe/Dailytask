provider "aws" {
    region = "${var.aws_region}"
  
}

resource "aws_vpc" "myvpc" {
  
  cidr_block = "${var.vpc_cidr_block}"


}

