resource "local_file" "kubeconfig_do" {
  content  = digitalocean_kubernetes_cluster.k8s_cluster.kube_config.0.raw_config
  filename = "${path.module}/kubeconfig.yml"
}
