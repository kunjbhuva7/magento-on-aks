variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group" {
  default = "magento-rg"
}
variable "location" {
  default = "East US"
}
variable "aks_name" {
  default = "magento-cluster"
}

