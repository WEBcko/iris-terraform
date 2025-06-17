output "cluster_endpoint" {
  description = "Endpoint do cluster GKE"
  value       = google_container_cluster.primary.endpoint
}

output "ingress_ip_address" {
  value = data.google_compute_address.ingress_ip.address
}
