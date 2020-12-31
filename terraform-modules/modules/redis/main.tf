resource "helm_release" "redis" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
}