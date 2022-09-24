variable "type" {
  description = "The ACME server type (staging or production)"
    default     = "staging"
}

variable "domain" {
  description = "The domain name for the issuer"
}

variable "cluster_configfile" {
  description = "The path to the cluster config file"
  default     = "~/.kube/config"
}

variable "cluster_context" {
  description = "The cluster context"
}

variable "namespace" {
  description = "The namespace to deploy the certificate in"
  default     = "default"
}

variable "cluster_issuer" {
  description = "The cluster issuer to use"
}
