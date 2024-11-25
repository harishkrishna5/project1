provider "aws" {

  region = "us-east-1"

}



resource "aws_eks_cluster" "eks" {

  name     = var.cluster_name

  role_arn = aws_iam_role.eks_role.arn

  vpc_config {

    subnet_ids = var.subnet_ids

  }

}



output "eks_cluster_endpoint" {

  value = aws_eks_cluster.eks.endpoint

}


