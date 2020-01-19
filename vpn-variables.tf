variable "vpn" {}
/* 
Parameters authorized:
- name (default: tunnel-$index )
- peer_ip (The remote vpn gateway external ip)
- dest_range (Remote network local cidr)
- local_range (Local network cidr)
- ike_version (default: 2) 
*/
variable "tunnels" {
  type        = "string"
  description = "List of maps of tunnels configured into this gateway"
}

variable "local_ranges" {
  type        = "list"
  default     = []
  description = "List of local CIDR to provide for VPN"
}

variable "remote_local_ranges" {
  type        = "list"
  default     = []
  description = "List of local CIDR in the remote network to access"
}

variable "cloud_router" {
  type        = "string"
  description = "Name of cloud router previously created to use in BGP session. If not used, an ew one will be created"
  default     = ""
}

variable "static_routes" {
  type        = "string"
  description = "Select how the routing between the network will be made. Valid options are dynamic (and it will be made via BGP) or static."
  default     = "false"
}

variable "asn" {
  type        = "string"
  description = "Select how the routing between the network will be made. Valid options are dynamic (and it will be made via BGP) or static."
  default     = ""
}