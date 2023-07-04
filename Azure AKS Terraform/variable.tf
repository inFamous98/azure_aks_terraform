variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "The Azure region location."
  type        = string
  default     = "eastus"
}

variable "cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "my-aks-cluster"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  type        = string
  default     = "myakscluster"
}

variable "kubernetes_version" {
  description = "The version of Kubernetes."
  type        = string
  default     = "1.20.7"
}

variable "node_pool_name" {
  description = "The name of the node pool."
  type        = string
  default     = "default"
}

variable "node_pool_count" {
  description = "The number of nodes in the node pool."
  type        = number
  default     = 3
}

variable "node_pool_vm_size" {
  description = "The VM size for the nodes in the node pool."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "client_id" {
  description = "The client ID for the service principal."
  type        = string
  default     = ""
}

variable "client_secret" {
  description = "The client secret for the service principal."
  type        = string
  default     = ""
}

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