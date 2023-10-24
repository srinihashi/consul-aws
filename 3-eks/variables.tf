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
  default     = "https://github.com/srinihashi/tf-consul-aws"
}

# EKS Config variables
variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
  default     = "eks-name"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "private_subnets" {
  type        = list(string)
  description = "Private subnets"
}

variable "intra_subnets" {
  type        = list(string)
  description = "Intra subnets"
}

variable "eks_version" {
  type        = string
  description = "EKS version"
  default     = "1.27"
}

