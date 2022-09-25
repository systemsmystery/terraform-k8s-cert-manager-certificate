resource "kubernetes_manifest" "certificate" {
  manifest = {
    "apiVersion" = "cert-manager.io/v1"
    "kind"       = "Certificate"
    "metadata" = {
      "name"      = "cert-${replace(var.domain_name, ".", "-")}"
      "namespace" = var.namespace
    }
    "spec" = {
      "commonName" = var.domain_name
      "dnsNames" = [
        var.domain
      ]
      "issuerRef" = {
        "kind" = "ClusterIssuer"
        "name" = var.cluster_issuer
      }
      "secretName" = "cert-${replace(var.domain_name, ".", "-")}-${var.type}-tls"
    }
  }
}