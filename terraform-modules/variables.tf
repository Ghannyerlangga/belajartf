variable "name_nginx" {
  type = string
}

variable "name_podinfo" {
  type = string
}

variable "name_redis" {
  type = string
}

variable "name_wordpress" {
  type = string
}

variable "repo_bitnami" {
  type = string
}

variable "repo_podinfo" {
  type = string
}

variable "chart_nginx" {
  type = string
}

variable "chart_podinfo" {
  type = string
}

variable "chart_redis" {
  type = string
}

variable "chart_wordpress" {
  type = string
}

variable "enable_nginx" {
  type = bool
}

variable "enable_podinfo" {
  type = bool
}

variable "enable_redis" {
  type = bool
}

variable "enable_wordpress" {
  type = bool
}