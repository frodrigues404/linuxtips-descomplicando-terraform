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
}

# provider "aws" {
#   alias  = "west"
#   region = "us-west-1"
# }

terraform {
  backend "s3" {
    bucket = "fernando.rodrigues-tfstates"
    key    = "day02/terraform.tfstate"
    region = "us-east-1"
  }
}