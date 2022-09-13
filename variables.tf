variable "do_token" {
  type        = string
  description = "Digital Ocean API Token"
  sensitive   = true
}

variable "do_cluster_name" {
  description = "Kubernetes cluster name"
  type        = string
  default     = "k8s-test"
}

variable "do_region" {
  description = "Kubernetes cluster region"
  type        = string
  default     = "sfo3"
}

variable "do_pool_name" {
  description = "Kubernetes default node pool name"
  type        = string
  default     = "k8s-test-pool"
}

variable "do_node_size" {
  description = "Kubernetes default node size"
  type        = string
  default     = "s-1vcpu-2gb"
}

variable "do_nodepool_count" {
  description = "Kubernetes node pool size"
  type        = number
  default     = 1
}

variable "do_pool_ad_name" {
  description = "Kubernetes additional node pool name"
  type        = string
  default     = "k8s-test-pool-ad"
}

variable "do_node_ad_size" {
  description = "Kubernetes additional node size"
  type        = string
  default     = "s-1vcpu-2gb"
}

variable "do_nodepool_ad_count" {
  description = "Kubernetes additional node pool size"
  type        = number
  default     = 1
}

variable "do_nodepool_scale" {
  description = "Kubernetes pool autoscale"
  type        = bool
  default     = true
}

variable "do_node_max" {
  description = "Kubernetes autoscale max size"
  type        = number
  default     = 3
}
