terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "foundry-terraform-backend"
    key    = "anna/terraform.tfstate"
    region = "us-west-2"
    # dynamodb_table = "eks_homework_locks"
    encrypt = true
    profile = "anna-account"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}