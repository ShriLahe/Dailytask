resource "aws_subnet" "public_subnet1" {
  
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Public Subnet 1"

  }
}

resource "aws_subnet" "public_subnet2" {
  
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Public Subnet 2"

  }
}