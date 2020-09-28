# GCP Settings
gcp_project        = "kopi-root"
gcp_auth_file      = "../auth/kopi-root.json"
billing_account_id = "012345-ABCDEF-678901"
gcp_region         = "europe-west4"
prefix             = "kopi"

# Network Variables
ha_vpn_folder_id = "folders/811481847178"
ha_vpn_subnet_cidr = "10.10.1.0/24"

# VPN Settings
ha_ext_vpn_gateway_ip_1 = "195.111.222.100"
ha_ext_vpn_gateway_ip_2 = "195.111.222.200"

ha_shared_secret = "K0p1Cl0ud"

ha_router_interface1_ip_range = "169.254.0.1/30"
ha_router_interface2_ip_range = "169.254.1.1/30"

ha_router_peer1_ip_address = "169.254.0.2"
ha_router_peer2_ip_address = "169.254.1.2"

ha_router_asn = "65020"
ha_peer_asn   = "65030"
