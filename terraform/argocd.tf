resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = "5.21.0"
  namespace        = "argocd"
  create_namespace = true

  set {
    name  = "server.ingress.enabled"
    value = "true"
  }

  set {
    name  = "server.ingress.hosts[0]"
    value = "argocd.student1.devops1.test-danit.com"
  }

  set {
    name  = "server.ingress.ingressClassName"
    value = "nginx"
  }
}
