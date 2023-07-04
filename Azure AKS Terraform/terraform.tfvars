cluster_configurations = [
  {
    cluster_name         = "cluster1"
    dns_prefix           = "cluster1dns"
    kubernetes_version   = "1.21.2"
    node_pool_name       = "nodepool1"
    node_pool_count      = 3
    node_pool_vm_size    = "Standard_DS2_v2"
    client_id            = ""
    client_secret        = ""
  },
  {
    cluster_name         = "cluster2"
    dns_prefix           = "cluster2dns"
    kubernetes_version   = "1.21.2"
    node_pool_name       = "nodepool2"
    node_pool_count      = 5
    node_pool_vm_size    = "Standard_DS3_v2"
    client_id            = ""
    client_secret        = ""
  }
]

resource_group_name = "POC"
location            = "eastus"
