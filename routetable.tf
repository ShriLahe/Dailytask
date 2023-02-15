resource "aws_route_table" "vpc_rt" {

vpc_id = aws_vpc.myvpc.id



route {

cidr_block = "0.0.0.0/0"

gateway_id = aws_internet_gateway.igw_vpc.id

}



tags = {

Name = "VPC Route Table"

}

}