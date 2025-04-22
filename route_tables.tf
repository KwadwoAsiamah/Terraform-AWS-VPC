# Public Route Table with a route to the Internet Gateway
resource "aws_route_table" "terraform_vpc_pub_rt" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraform_vpc_igw.id
  }

  tags = {
    Name = "${var.name_prefix}-pub-rt"
  }
}

# Associate Public Subnets with the Public Route Table
resource "aws_route_table_association" "terraform_vpc_pub_rt_assoc" {
  count          = length(aws_subnet.terraform_vpc_pub_subn)
  subnet_id      = aws_subnet.terraform_vpc_pub_subn[count.index].id
  route_table_id = aws_route_table.terraform_vpc_pub_rt.id
}

# Private Route Table with a route to the NAT Gateway
resource "aws_route_table" "terraform_vpc_prv_rt" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.terraform_vpc_nat.id
  }

  tags = {
    Name = "${var.name_prefix}-prv-rt"
  }
}

# Associate Private Subnets with the Private Route Table
resource "aws_route_table_association" "terraform_vpc_prv_rt_assoc" {
  count          = length(aws_subnet.terraform_vpc_prv_subn)
  subnet_id      = aws_subnet.terraform_vpc_prv_subn[count.index].id
  route_table_id = aws_route_table.terraform_vpc_prv_rt.id
}
