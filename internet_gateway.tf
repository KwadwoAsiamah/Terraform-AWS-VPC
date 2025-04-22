# Internet Gateway for Public Subnets' internet access
resource "aws_internet_gateway" "terraform_vpc_igw" {
  vpc_id = aws_vpc.terraform_vpc.id

  tags = {
    Name = "${var.name_prefix}-igw"
  }
}
