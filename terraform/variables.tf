variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group" {
  default = "magento-6B"
}
variable "location" {
  default = "centralindia"
}
variable "aks_name" {
  default = "magento-cluster-1"
}

