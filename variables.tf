variable "name_prefix" {
  description = "Prefix for naming resources"
  type        = string
  default     = "terraform-vpc"
}
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "pub_subn_cidrs" {
  description = "CIDR blocks for Public Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "prv_subn_cidrs" {
  description = "CIDR blocks for Private Subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "azs" {
  description = "Availability Zones for Subnets"
  type        = list(string)
  default     = ["us-west-1a", "us-west-1c"]
}
