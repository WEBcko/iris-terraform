terraform {
  backend "gcs" {
    bucket = "estado-terraform"   
    prefix = "terraform/state"        
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
  credentials = file(var.credentials_file_path)
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = var.region

  initial_node_count = var.cluster_size

  node_config {
    machine_type = var.machine_type

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]

    metadata = {
      ssh-keys = "ubuntu:${file(var.public_key_path)}"
    }
  }
}
