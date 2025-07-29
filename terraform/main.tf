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

