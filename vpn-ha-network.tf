###########################
## HA VPN Network - Main ##
###########################

# random ID for project
resource "random_integer" "random-ha" {
  max = 2000
  min = 1000
}

# Create the HA VPN Project
resource "google_project" "vpn-ha" {
  name                = "${var.prefix}-vpn-ha"
  project_id          = "${var.prefix}-vpn-ha-${random_integer.random-ha.id}"
  folder_id           = var.ha_vpn_folder_id 
  auto_create_network = false
  billing_account     = var.billing_account_id
}

# Create the Network for VPN Project
resource "google_compute_network" "vpn-network-ha" {
  name                    = "${var.prefix}-vpn-network-ha"
  project                 = google_project.vpn-ha.project_id
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = "false"
}

# Create a Subnet 
resource "google_compute_subnetwork" "vpn-network-subnet-ha" {
  depends_on = [google_compute_network.vpn-network-ha]
 
  name          = "${var.prefix}-vpn-subnet-ha"
  project       = google_project.vpn-ha.project_id
  ip_cidr_range = var.ha_vpn_subnet_cidr
  region        = var.gcp_region
  network       = google_compute_network.vpn-network-ha.name
}

