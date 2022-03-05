<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this_label"></a> [this\_label](#module\_this\_label) | r0ck40k/label/generic | 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | List of all attributes to include in the table | `map(string)` | n/a | yes |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | Billing mode for Dynamodb | `string` | `"PROVISIONED"` | no |
| <a name="input_context"></a> [context](#input\_context) | Default environmental context | <pre>object({<br>    organization = string<br>    environment  = string<br>    account      = string<br>    product      = string<br>    tags         = map(string)<br>  })</pre> | n/a | yes |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | Default hashkey | `string` | n/a | yes |
| <a name="input_kms_arn"></a> [kms\_arn](#input\_kms\_arn) | KMS Key to use | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the dynamodb table to create | `string` | n/a | yes |
| <a name="input_range_key"></a> [range\_key](#input\_range\_key) | Default rangekey | `string` | `null` | no |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | Read capacity if BILLING\_MODE is provisioned | `number` | `5` | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | Write capacity if BILLING\_MODE is provisioned | `number` | `5` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the created table |
| <a name="output_hash_key"></a> [hash\_key](#output\_hash\_key) | Hash key field for the table |
| <a name="output_id"></a> [id](#output\_id) | ID of the created table |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-disable -->
<!-- prettier-ignore-end -->
