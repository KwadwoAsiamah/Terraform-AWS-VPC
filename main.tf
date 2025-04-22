# Use the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }
}

# Configure the AWS provider with the specified region
provider "aws" {
  region = var.region
}
