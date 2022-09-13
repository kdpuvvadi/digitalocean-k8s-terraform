data "digitalocean_kubernetes_versions" "get_version" {
}

resource "digitalocean_kubernetes_cluster" "k8s_cluster" {
  name    = var.do_cluster_name
  region  = var.do_region
  version = data.digitalocean_kubernetes_versions.get_version.latest_version

  node_pool {
    name       = var.do_pool_name
    size       = var.do_node_size
    auto_scale = var.do_nodepool_scale
    min_nodes  = var.do_nodepool_count
    max_nodes  = var.do_node_max
  }

}

resource "digitalocean_kubernetes_node_pool" "k8s_cluster_pool_ad" {
  cluster_id = digitalocean_kubernetes_cluster.k8s_cluster.id

  name       = var.do_pool_ad_name
  size       = var.do_node_ad_size
  auto_scale = var.do_nodepool_scale
  min_nodes  = var.do_nodepool_ad_count
  max_nodes  = var.do_node_max
}
