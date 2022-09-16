terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 0.12"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

module "dynamoDB" {
  source = "./modules/dynamodb"
}

module "CloudWatch" {
  source = "./modules/cloudwatch"
}