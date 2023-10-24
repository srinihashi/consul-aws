# Global variables
variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Environment"
  default     = "dev"
}

variable "owner" {
  type        = string
  description = "Owner"
  default     = "Owner"
}

variable "project" {
  type        = string
  description = "Project"
  default     = "Project"
}

variable "tf_repo" {
  type        = string
  description = "Terraform repository"
  default     = "GitHub Repo URL"
}

# VPC Configuration
variable "vpc_name" {
  type        = string
  description = "VPC name"
  default     = "vpc-name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
  default     = "10.123.0.0/16"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "intra_subnets" {
  type        = list(string)
  description = "Intra subnets"
  default     = ["10.123.1.0/24", "10.123.2.0/24", "10.123.3.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnets"
  default     = ["10.123.4.0/24", "10.123.5.0/24", "10.123.6.0/24"]
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnets"
  default     = ["10.123.7.0/24", "10.123.8.0/24", "10.123.9.0/24"]
}
