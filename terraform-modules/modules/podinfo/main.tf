resource "helm_release" "podinfo" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
}