provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "magentoaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2as_v4"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    env = "dev"
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "aks_admin" {
  scope                = azurerm_resource_group.main.id
  role_definition_name = "Contributor"
  principal_id         = azurerm_kubernetes_cluster.main.identity[0].principal_id

  depends_on = [azurerm_kubernetes_cluster.main]
}

