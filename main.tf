resource "kubernetes_manifest" "certificate" {
  manifest = {
    "apiVersion" = "cert-manager.io/v1"
    "kind"       = "Certificate"
    "metadata" = {
      "name"      = "cert-${replace(var.domain, ".", "-")}"
      "namespace" = var.namespace
    }
    "spec" = {
      "commonName" = var.domain
      "dnsNames" = [
        var.domain
      ]
      "issuerRef" = {
        "kind" = "ClusterIssuer"
        "name" = var.cluster_issuer
      }
      "secretName" = "cert-${replace(var.domain, ".", "-")}-${var.type}-tls"
    }
  }
}