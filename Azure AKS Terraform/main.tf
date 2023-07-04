module "resource_group" {
  source              = "./resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "aks_cluster" {
  source               = "./aks_cluster"
  resource_group_name  = var.resource_group_name
  location = var.location
  cluster_configurations = var.cluster_configurations
}
