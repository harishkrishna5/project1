variable "cluster_name" {

  default = "demo-eks-cluster"

}



variable "subnet_ids" {

  type = list(string)

}
