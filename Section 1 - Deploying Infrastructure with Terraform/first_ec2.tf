terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIATNR6BRTTR55ONYUI"
  secret_key = "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"
}

resource "aws_instance" "firstEC2" {
    ami = ami-0b0dcb5067f052a63
    instance_type = t2.micro

    tags = {
    Name = "firstEC2"
  }
  
}