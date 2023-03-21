# Terraform Settings Block
terraform {
  required_version = "1.2.7"
  
  required providers {
    aws = {
      source = "hashicorp/aws**
      version = "~> 4.0"
    }
  }
} 
