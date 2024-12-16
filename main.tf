resource "aws_vpc" "my_vpc_161224" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my_vpc_161224"
    terraform = true
  }
}