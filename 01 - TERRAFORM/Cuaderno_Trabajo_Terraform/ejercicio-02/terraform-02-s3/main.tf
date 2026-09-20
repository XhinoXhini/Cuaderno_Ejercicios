terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket_aula" {
  bucket = "jill-peren-1554844115888"

  tags = {
    Name = "terraform-s3-aula"
  }
}