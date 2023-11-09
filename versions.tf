terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.2"
    }
  }
}

provider "aws" {
  region     = var.region

  default_tags {
    tags = {
        Environment = var.environment
        Project     = var.project
        Owner       = var.owner
        TF_repo     = var.tf_repo
    }
  } 
}