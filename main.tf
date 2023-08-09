terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.63.0"
    }
  }
 
}
provider "google" {
  # Configuration options
  project = "anthos-installation"
  region  = "us-central1"
  zone    = "us-central1-a"
  credentials  ="keys.json"
}
resource "google_compute_instance" "demo" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"

    access_config {

}
      // Ephemeral IP
    }
  }

  
