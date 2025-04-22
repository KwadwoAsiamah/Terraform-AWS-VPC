# Public Subnets
resource "aws_subnet" "terraform_vpc_pub_subn" {
  count             = length(var.pub_subn_cidrs)
  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.pub_subn_cidrs[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "${var.name_prefix}-pub-subn-${count.index + 1}"
  }
}

# Private Subnets
resource "aws_subnet" "terraform_vpc_prv_subn" {
  count             = length(var.prv_subn_cidrs)
  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.prv_subn_cidrs[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "${var.name_prefix}-prv-subn-${count.index + 1}"
  }
}
