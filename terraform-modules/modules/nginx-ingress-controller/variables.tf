variable "name" {
  type = string
}

variable "repository" {
  type = string
}

variable "chart" {
  type = string
}

variable "service" {
  type = string
  default = "ClusterIP"
}