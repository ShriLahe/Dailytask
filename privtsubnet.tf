resource "aws_subnet" "private_subnet3" {

    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-south-1a"
  
  tags = {
    Name = "Private Subnet 3"

  }
  
}

resource "aws_subnet" "private_subnet4" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.4.0/24"
    availability_zone = "ap-south-1b"
  
  tags = {
    Name = "Private Subnet 4"

  }
  
}