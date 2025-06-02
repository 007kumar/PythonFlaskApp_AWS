module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.11.0"  # or latest

  cluster_enabled_log_types = []
  create_cloudwatch_log_group = false

  cluster_name    = "shivkumar-eks-cluster"
  cluster_version = "1.27"
  vpc_id          = var.vpc_id
  subnet_ids      = var.private_subnets

  create_kms_key             = false
  attach_cluster_encryption_policy = false
  cluster_encryption_config        = {}

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]
      min_size       = 1
      max_size       = 2
      desired_size   = 1
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}
