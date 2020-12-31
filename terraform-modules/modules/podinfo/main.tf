provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "podinfo" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
}