provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "nginx-ingress-controller" {
  source = "./modules/nginx-ingress-controller"
  count = var.enable_nginx
  
  name       = var.name_nginx
  repository = var.repo_bitnami
  chart      = var.chart_nginx

}

module "podinfo" {
  source = "./modules/podinfo"
  count = var.enable-podinfo

  name       = var.name_podinfo
  repository = var.repo_podinfo
  chart      = var.chart_podinfo
}

module "redis" {
  source = "./modules/redis"

  name       = var.name_redis
  repository = var.repo_bitnami
  chart      = var.chart_redis
}

module "wordpress" {
  source = "./modules/wordpress"

  name       = var.name_wordpress
  repository = var.repo_bitnami
  chart      = var.chart_wordpress
}