variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group" {
  default = "magento-C4"
}
variable "location" {
  default = "centralus"
}
variable "aks_name" {
  default = "magento-cluster"
}

