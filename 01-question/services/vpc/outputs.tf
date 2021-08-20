output "output_vpc_id" {
  value = aws_vpc.vpc.id
}

output "outputpublicsubnet1" {
  value = aws_subnet.public-subnet-1.id
}

output "outputpublicsubnet2" {
  value = aws_subnet.publicsubnet2.id
}

output "outputprivatesubnet3" {
  value = aws_subnet.privatesubnet3.id
}

output "outputprivatesubnet4" {
  value = aws_subnet.privatesubnet4.id
}

output "out_rdssubnetgroup" {
  value = aws_db_subnet_group.rdsubnetgroup.id
}

output "output_igw" {
  value = aws_internet_gateway.igw.id
}
