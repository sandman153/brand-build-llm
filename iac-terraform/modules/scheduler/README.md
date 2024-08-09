## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloud_scheduler_job.gemini_scheduler](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_scheduler_job) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pubsub_topic"></a> [pubsub\_topic](#input\_pubsub\_topic) | The Pub/Sub topic to trigger | `string` | n/a | yes |
| <a name="input_schedule"></a> [schedule](#input\_schedule) | The cron schedule for the job | `string` | n/a | yes |
| <a name="input_scheduler_name"></a> [scheduler\_name](#input\_scheduler\_name) | The name of the Cloud Scheduler job | `string` | n/a | yes |
| <a name="input_time_zone"></a> [time\_zone](#input\_time\_zone) | The time zone for the job schedule | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_scheduler_name"></a> [scheduler\_name](#output\_scheduler\_name) | n/a |
