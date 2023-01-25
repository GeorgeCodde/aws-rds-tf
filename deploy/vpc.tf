resource "aws_vpc" "vpc_rds_test" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "testrds"
  }
}

resource "aws_subnet" "subnet_a" {
  vpc_id     = aws_vpc.vpc_rds_test.id
  availability_zone = "us-east-1a"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subneta"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id     = aws_vpc.vpc_rds_test.id
  availability_zone = "us-east-1b"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "subnetb"
  }
}