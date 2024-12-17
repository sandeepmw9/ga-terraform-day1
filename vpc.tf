resource "aws_vpc" "my_vpc_161224" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name      = "my_vpc_161224"
    terraform = true
  }
}


resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.my_vpc_161224.id

  tags = {
    terraform = true
  }
}

resource "aws_subnet" "priv_sub1" {
  vpc_id     = aws_vpc.my_vpc_161224.id
  cidr_block = "10.0.1.0/24"

  tags = {
    terraform = true
  }
}

resource "aws_subnet" "pub_sub1" {
  vpc_id     = aws_vpc.my_vpc_161224.id
  cidr_block = "10.0.2.0/24"

  tags = {
    terraform = true
  }
}


resource "aws_route_table" "rtb1" {
  vpc_id = aws_vpc.my_vpc_161224.id

  route {
    cidr_block = aws_subnet.pub_sub1.id
    gateway_id = aws_internet_gateway.igw1.id
  }

  tags = {
    terraform = true
  }
}