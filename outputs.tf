output "cert_name" {
  value = kubernetes_manifest.certificate.manifest.metadata.name
}

output "cert_secret_name" {
  value = kubernetes_manifest.certificate.manifest.spec.secretName
}