## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloud_functions"></a> [cloud\_functions](#module\_cloud\_functions) | ../../modules/cloud_functions | n/a |
| <a name="module_google_storage_bucket"></a> [google\_storage\_bucket](#module\_google\_storage\_bucket) | ../../modules/storage | n/a |
| <a name="module_iam"></a> [iam](#module\_iam) | ../../modules/iam | n/a |
| <a name="module_pubsub"></a> [pubsub](#module\_pubsub) | ../../modules/pubsub | n/a |
| <a name="module_scheduler"></a> [scheduler](#module\_scheduler) | ../../modules/scheduler | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_credentials"></a> [credentials](#input\_credentials) | The GCP service account credentials | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP project ID | `string` | `"brand-build-gemini"` | no |
| <a name="input_region"></a> [region](#input\_region) | The region in GCP | `string` | `"australia-southeast1"` | no |
| <a name="input_time_zone"></a> [time\_zone](#input\_time\_zone) | The time zone for the scheduler job | `string` | `"Australia/Sydney"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | The zone in GCP | `string` | `"australia-southeast1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_functions_url"></a> [cloud\_functions\_url](#output\_cloud\_functions\_url) | n/a |
