variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group" {
  default = "magento-9B"
}
variable "location" {
  default = "Central India"
}
variable "aks_name" {
  default = "magento-cluster-2"
}

