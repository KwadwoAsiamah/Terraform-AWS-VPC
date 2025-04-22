# Terraform AWS VPC
A simple Terraform configuration for deploying an AWS Virtual Private Cloud (VPC) with core networking components. This project is designed for clarity and ease of use, focusing on the essential infrastructure needed for most AWS VPC environments.

## Project Structure
```
Terraform-AWS‑VPC/
├── .gitignore
├── internet_gateway.tf
├── LICENSE
├── main.tf
├── nat_gateway.tf
├── outputs.tf
├── README.md
├── route_tables.tf
├── subnets.tf
├── variables.tf
└── vpc.tf
```

## Features
* **Creates an AWS VPC** with a customizable CIDR block
* **Provisions Public and Private subnets** across multiple Availability Zones
* **Deploys an Internet Gateway** for Public Subnet connectivity
* **Deploys a NAT Gateway** for secure outbound internet access from Private Subnets
* **Configures Route Tables** for correct routing between Subnets, NAT, and the internet
* **Exports key outputs** such as VPC ID, Subnet IDs, and Gateway IDs for integration with other infrastructure

## Prerequisites
* [Terraform](https://developer.hashicorp.com/terraform/install) (v1.0+ recommended)
* An AWS account with appropriate permissions
* AWS credentials configured (via environment variables or AWS CLI)

## Usage
### 1. Clone or download the repository and change to the repo's directory
```
cd Terraform-AWS-VPC
```

### 2. Initialize Terraform
```
terraform init
```

### 3. Review and customize variables
Edit `variables.tf` or create a `terraform.tfvars` file to override defaults.

### 4. Plan the deployment
```
terraform plan
```

### 5. Apply the configuration
```
terraform apply
```

### 6. View outputs
After a successful apply, Terraform will display the IDs of the created VPC, Subnets, and Gateways.

## Customization
Adjust CIDR blocks, Region, and AZs in `variables.tf` to fit your network requirements.

## Clean Up
To destroy all resources created by this configuration:
```
terraform destroy
```
