output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.terraform_vpc.id
}

output "pub_subn_ids" {
  description = "IDs of the Public Subnets"
  value       = aws_subnet.terraform_vpc_pub_subn[*].id
}

output "prv_subn_ids" {
  description = "IDs of the Private Subnets"
  value       = aws_subnet.terraform_vpc_prv_subn[*].id
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.terraform_vpc_igw.id
}

output "nat_gateway_id" {
  description = "ID of the NAT Gateway"
  value       = aws_nat_gateway.terraform_vpc_nat.id
}
