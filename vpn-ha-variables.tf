############################
## HA VPN GCP - Variables ##
############################

variable "billing_account_id" {
  description = "Billing account id used as default for new projects."
  type        = string
}

variable "prefix" {
  description = "Prefix used for resources that need unique names."
  type        = string
}

variable "ha_vpn_folder_id" {
  type        = string
  description = "Folder to host the Project"
}

variable "ha_vpn_subnet_cidr" {
  type        = string
  description = "VPN Network Subnet 1"
  default     = "10.0.1.0/24"
}

variable "ha_ext_vpn_gateway_ip_1" {
  type        = string
  description = "Public IP #1 of the external VPN Gateway"
}

variable "ha_ext_vpn_gateway_ip_2" {
  type        = string
  description = "Public IP #1 of the external VPN Gateway"
}

variable "ha_router_asn" {
  description = "ASN for local side of BGP sessions"
  type        = string
  default     = "64514"
}

variable "ha_peer_asn" {
  description = "ASN for local side of BGP sessions"
  type        = string
  default     = "64515"
}

variable "ha_shared_secret" {
  description = "Tunnel shared secret"
  type        = string
}

variable "ha_router_interface1_ip_range" {
  description = "Router Interface #1 IP Range"
  type        = string
}

variable "ha_router_interface2_ip_range" {
  description = "Router Interface #2 IP Range"
  type        = string
}

variable "ha_router_peer1_ip_address" {
  description = "Router Peer #1 IP Address"
  type        = string
}

variable "ha_router_peer2_ip_address" {
  description = "Router Peer #1 IP Address"
  type        = string
}
