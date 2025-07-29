variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group" {
  default = "magento-4B"
}
variable "location" {
  default = "West Europe"
}
variable "aks_name" {
  default = "magento-cluster-1"
}

