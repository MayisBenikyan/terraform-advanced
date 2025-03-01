terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
    }
  }

  backend "s3" {
    bucket = "tf-advanced-state-bucket"
    key = "terraform.tfstate"
    region = "eu-north-1"
    encrypt = true
  }
}

provider "aws" {
  region = "eu-north-1"
}