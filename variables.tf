variable "region" {
    type = string
    description = "AWS region"
    default = "us-east-1"
}

variable "environment" {
    type = string
    description = "Environment"
    default = "dev"
}

variable "project" {
    type = string
    description = "Project"
    default = "Consul-TE"  
}

variable "owner" {
    type = string
    description = "Owner"
    default = "Srini"  
}

variable "tf_repo" {
    type = string
    description = "Terraform repo"
    default = "https://github.com/srinihashi/tf-consul-aws"
}
