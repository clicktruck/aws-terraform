locals {
  min_worker_nodes        = var.desired_nodes
  max_worker_nodes        = var.desired_nodes * 5
  public_subnet_id_array  = split(",", var.public_subnet_ids)
  private_subnet_id_array = split(",", var.private_subnet_ids)

  tags = {
    GithubRepo             = "https://github.com/aws-ia/terraform-aws-eks-blueprints"
    ContributingGithubRepo = "https://github.com/clicktruck/aws-terraform"
  }
}