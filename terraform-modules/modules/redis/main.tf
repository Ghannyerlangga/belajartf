provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "redis" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
}