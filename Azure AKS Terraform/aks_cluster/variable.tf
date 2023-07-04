variable "cluster_configurations" {
  description = "List of cluster configurations"
  type        = list(object({
    cluster_name         = string
    dns_prefix           = string
    kubernetes_version   = string
    node_pool_name       = string
    node_pool_count      = number
    node_pool_vm_size    = string
    client_id            = string
    client_secret        = string
  }))
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region location."
  type        = string
}