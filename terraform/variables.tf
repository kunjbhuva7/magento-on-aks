variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group" {
  default = "magento-1B"
}
variable "location" {
  default = "eastus"
}
variable "aks_name" {
  default = "magento-cluster"
}

