terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.2"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = var.environment
      Owner       = var.owner
      project     = var.project
      tf_repo     = var.tf_repo
    }
  }
}