provider "aws" {
  region = local.region
}

locals {
  name   = "serverless"
  region = "us-east-1"
  tags = {
    Owner       = "user"
    Environment = "dev"
  }
}