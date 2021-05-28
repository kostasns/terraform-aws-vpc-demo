provider "aws" {
  profile = "rnd"
  region  = var.aws_region
}

module "vpc" {
  source = "../.."

  cidr_block = "10.123.0.0/16"
  tags = {
      Name = "vpc-demo"
  }
}