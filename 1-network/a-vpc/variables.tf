# Global variables
variable "region" {
  type        = string
  description = "AWS region"
  default = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Environment"
  default = "dev"
}

variable "owner" {
  type        = string
  description = "Owner"
  default = "Wizard-of-Oz"
}

variable "project" {
  type        = string
  description = "Project"
  default = "Wiz"
}

variable "tf_repo" {
  type        = string
  description = "Terraform repository"
  default = "https://github.com/srinihashi/wiz/tree/main/1-network/a-vpc"
}

# VPC Configuration
variable "vpc_name" {
  type        = string
  description = "VPC name"
  default = "wiz-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default = "10.123.0.0/16"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones"
  default = ["us-east-1a", "us-east-1b"]
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnets"
  default = ["10.123.3.0/24", "10.123.4.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnets"
  default = ["10.123.1.0/24", "10.123.2.0/24"]
}

variable "intra_subnets" {
  type        = list(string)
  description = "Intra subnets"
  default = ["10.123.5.0/24", "10.123.6.0/24"]
}
