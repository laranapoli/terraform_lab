terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "sa-east-1"
  profile = "tf_linux_lab"
}

resource "aws_s3_bucket" "example" {
  bucket = "tf-test-bucket-lnm-9538"

  tags = {
    ManagedBy = "Terraform"
  }
}