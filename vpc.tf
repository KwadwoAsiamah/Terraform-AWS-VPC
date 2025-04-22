# Define the VPC
resource "aws_vpc" "terraform_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.name_prefix
  }
}
