provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "souf_hdh_demo_cluster" {
  name                = "souf_hdh_demo_cluster"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "soufhdhcluster"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.souf_hdh_demo_cluster.kube_config_raw
}
