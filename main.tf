terraform {
  required_providers {
    aws = {
      version = "~> 3.42"
      source = "hashicorp/aws"
    }
  }
  required_version = "~> 0.15"
}

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  tags = var.tags
}