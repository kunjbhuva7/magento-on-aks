variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group" {
  default = "magento-5B"
}
variable "location" {
  default = "westeurope"
}
variable "aks_name" {
  default = "magento-cluster-1"
}

