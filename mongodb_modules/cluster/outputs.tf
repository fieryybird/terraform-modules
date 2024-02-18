output "cluster_info" {
  value = [
    "Cluster name: ${mongodbatlas_cluster.mycluster.name}",
    "Provider: ${mongodbatlas_cluster.mycluster.backing_provider_name}",
    "Region: ${mongodbatlas_cluster.mycluster.provider_region_name}",
    "Instanse: ${mongodbatlas_cluster.mycluster.provider_instance_size_name}"
  ]
}
