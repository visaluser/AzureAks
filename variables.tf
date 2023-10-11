variable "resourcename" {
  default = "k8s-resources-dev"
}
variable "clustername" {
  default = "kubernetes-aks1-dev"
}
variable "vnetname" {
  default = "vnet-aks1-dev"
}
variable "location" {
  default = "East US"
}
variable "dnspreffix" {
  default = "kubecluster-dev"
}
variable "size" {
  default = "Standard_D2_v2"
}
variable "agentnode" {
  default = "1"
}
variable "client_id" {
  default     =  "$(client_id)"  #"01e81877-d075-4d04-b987-ca08225c3bc1"
  description = "Azure Client ID"
}
variable "client_secret" {
  default     = "$(client_secret)"
  description = "Azure Client Secret"
}
variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}
