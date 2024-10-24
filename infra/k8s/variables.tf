variable "location" {
  description = "Location of the AKS cluster"
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group name for AKS"
}

variable "cluster_name" {
  description = "AKS Cluster name"
  default     = "souf_hdh_demo_cluster"
}

variable "node_count" {
  description = "Number of AKS nodes"
  default     = 3
}
