provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "wordpress" {
  name       = var.name
  repository = var.repo
  chart      = var.chart
}