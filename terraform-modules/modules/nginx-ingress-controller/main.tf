resource "helm_release" "nginx_ingress" {
  name       = var.name
  repository = var.repository
  chart      = var.chart

  set {
    name  = "service.type"
    value = var.service
  }
}