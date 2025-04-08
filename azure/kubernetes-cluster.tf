resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.application_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "practicumk8s"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }
}

# Attach ACR to AKS
resource "azurerm_role_assignment" "aks_acr_attach" {
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  role_definition_name            = "AcrPull"
  scope                           = azurerm_container_registry.acr.id
}
