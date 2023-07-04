resource "azurerm_kubernetes_cluster" "aks_cluster" {
  count = length(var.cluster_configurations)

  name                = var.cluster_configurations[count.index].cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = var.cluster_configurations[count.index].dns_prefix
  kubernetes_version  = var.cluster_configurations[count.index].kubernetes_version

  default_node_pool {
    name                = var.cluster_configurations[count.index].node_pool_name
    node_count          = var.cluster_configurations[count.index].node_pool_count
    vm_size             = var.cluster_configurations[count.index].node_pool_vm_size
    enable_auto_scaling = false
  }

  service_principal {
    client_id     = var.cluster_configurations[count.index].client_id
    client_secret = var.cluster_configurations[count.index].client_secret
  }
}
