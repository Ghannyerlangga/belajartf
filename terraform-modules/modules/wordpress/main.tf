provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "wordpress" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
}