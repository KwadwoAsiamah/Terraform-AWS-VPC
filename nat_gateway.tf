# Elastic IP for the NAT Gateway
resource "aws_eip" "terraform_vpc_eip" {
  domain = "vpc"

  tags = {
    Name = "${var.name_prefix}-eip"
  }
}

# NAT Gateway in the first Public Subnet
resource "aws_nat_gateway" "terraform_vpc_nat" {
  allocation_id = aws_eip.terraform_vpc_eip.id
  subnet_id     = aws_subnet.terraform_vpc_pub_subn[0].id

  tags = {
    Name = "${var.name_prefix}-nat"
  }
}
