resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cdir_block

  tags = {
    Name = "${var.env}-${var.region}-vpc-${count.index + 1}"
  }

}

resource "aws_subnet" "public-subnet-1" {

  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_1
  availability_zone = var.AZ_a

  tags = {
    Name = "${var.env}-${var.region}-subnet-${count.index + 1}"
  }

}

resource "aws_subnet" "public-subnet-2" {

  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.public_subnet_2
  availability_zone = var.AZ_b

  tags = {
    Name = "Public Subnet-2"
  }

}

resource "aws_subnet" "privatesubnet3" {

  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_3
  availability_zone = var.AZ_a

  tags = {
    Name = "Private Subnet-3"
  }

}

resource "aws_subnet" "privatesubnet4" {

  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.private_subnet_4
  availability_zone = var.AZ_b

  tags = {
    Name = "Private Subnet-4"
  }

}

# RDS Instance Subnet Group

resource "aws_db_subnet_group" "rdsubnetgroup" {

  name       = "rds_subnet_group"
  subnet_ids = [aws_subnet.privatesubnet3.id, aws_subnet.privatesubnet4.id]

  tags = {
    Name = "My RDS Subnet Group"
  }

}
