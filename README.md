<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_manifest.certificate](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_configfile"></a> [cluster\_configfile](#input\_cluster\_configfile) | The path to the cluster config file | `string` | `"~/.kube/config"` | no |
| <a name="input_cluster_context"></a> [cluster\_context](#input\_cluster\_context) | The cluster context | `any` | n/a | yes |
| <a name="input_cluster_issuer"></a> [cluster\_issuer](#input\_cluster\_issuer) | The cluster issuer to use | `any` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The domain name for the issuer | `any` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to deploy the certificate in | `string` | `"default"` | no |
| <a name="input_type"></a> [type](#input\_type) | The ACME server type (staging or production) | `string` | `"staging"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cert_name"></a> [cert\_name](#output\_cert\_name) | n/a |
<!-- END_TF_DOCS -->