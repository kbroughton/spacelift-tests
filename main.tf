terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
      version = "~> 0.1.30"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


provider "spacelift" {
  # Configuration options
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}
