# Terraform Settings Block
terraform {
  required_version = ">= 1.2"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.63"
     }
  }
}

# Terraform Provider Block
provider "aws" {
  region = var.aws_region
  profile = "aeropost-dev"
}