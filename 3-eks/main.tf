# Create an EKS Cluster
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name                   = var.cluster_name
  cluster_version                = var.eks_version
  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = var.vpc_id
  subnet_ids               = var.private_subnets
  control_plane_subnet_ids = var.intra_subnets

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    ami_type       = "AL2_x86_64"
    instance_types = ["t2.small"]

    attach_cluster_primary_security_group = true
  }

  eks_managed_node_groups = {
    consul = {
      name = "consul-control-plane"
      instance_types = ["t2.micro"]

      min_size       = 1
      max_size       = 5
      desired_size   = 3
    }
  }

  node_security_group_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = null
  }
}

