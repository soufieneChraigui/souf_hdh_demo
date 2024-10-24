provider "kubernetes" {
  config_path = "path_to_kubeconfig"
}

resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  namespace  = kubernetes_namespace.argocd.metadata[0].name
  chart      = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  version    = "3.5.4"

  set {
    name  = "server.service.type"
    value = "LoadBalancer"
  }
}
